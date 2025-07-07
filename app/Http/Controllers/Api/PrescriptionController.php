<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Prescription;
use App\Models\PrescriptionDetail;
use Illuminate\Http\Request;

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
        //
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
