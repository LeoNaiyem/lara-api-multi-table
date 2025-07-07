<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Patient;
use App\Models\Prescription;
use App\Models\PrescriptionDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PrescriptionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $ps=new Prescription();
        $ps->patient_id=$request->patient_id;
        $ps->consultant_id=$request->consultant_id;
        $ps->cc=$request->cc;
        $ps->rf=$request->rf;
        $ps->investigation=$request->investigation;
        $ps->advice=$request->advice;
        $ps->save();

        $items=$request->rx;
        foreach ($items as $item) {
            $psd=new PrescriptionDetail();
            $psd->prescription_id=$ps->id;
            $psd->medicine_id=$item['medicine_id'];
            $psd->dose=$item['dose'];
            $psd->days=$item['days'];
            $psd->suggestion=$item['suggestion'];
            $psd->medicine_name=$item['medicine_name'];
            $psd->save();
        }
        return response()->json($ps);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $prescription = DB::table('prescriptions as p')
            ->join('prescription_details as d', 'p.id', '=', 'd.prescription_id')
            ->join('medicines as m', 'm.id', '=', 'd.medicine_id')
            ->where('p.id', $id)
            ->get([
                'p.patient_id',
                'p.consultant_id',
                'p.cc',
                'p.rf',
                'p.investigation',
                'p.advice',
                'm.name as medicine_name',
                'd.dose',
                'd.days',
                'd.suggestion',
            ]);

        if ($prescription->isEmpty()) {
            return response()->json(['message' => 'prescription not found'], 404);
        }

        $patient = Patient::find($prescription[0]->patient_id);
        // $details = InvoiceDetail::where('invoice_id', $invoiceId)->get();

        return response()->json([
            'prescription' => $prescription,
            // 'details' => $details,
            'patient' => $patient
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
