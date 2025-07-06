<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Invoice;
use App\Models\InvoiceDetail;
use App\Models\Patient;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $invoices = DB::table('invoices as i')
            ->join('patients as p', 'i.patient_id', '=', 'p.id')
            ->select(
                'i.id',
                'i.invoice_total',
                'i.paid_total',
                'i.discount',
                'i.vat',
                'i.payment_term',
                'i.previous_due',
                'i.created_at',
                'i.remark',
                'p.id as patient_id',
                'p.name as patient_name',
                'p.mobile',
                'p.gender'
            )
            ->orderBy('i.created_at', 'desc')
            ->get();

        return response()->json([
            'success' => true,
            'data' => $invoices,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $invoices = new Invoice();
        $invoices->patient_id = $request->patient_id;
        $invoices->invoice_total = $request->invoice_total;
        $invoices->paid_total = $request->paid_total;
        $invoices->discount = 0;
        $invoices->vat = 0;
        $invoices->payment_term = $request->payment_term;
        $invoices->remark = $request->remark;
        $invoices->created_at = now()->format('F d, Y');
        $invoices->save();
        foreach ($request->services as $service) {
            $details = new InvoiceDetail();
            $details->invoice_id = $invoices->id;
            $details->service_id = $service['id'];
            $details->unit = $service['unit'];
            $details->price = $service['price'];
            $details->discount = $service['discount'];
            $details->vat = $service['vat'];
            $details->save();
        }
        return response()->json($invoices);
    }

    /**
     * Display the specified resource.
     */
    public function show($invoiceId)
    {
        $invoice = DB::table('invoices as i')
            ->join('invoice_details as d', 'i.id', '=', 'd.invoice_id')
            ->join('services as s', 's.id', '=', 'd.service_id')
            ->where('i.id', $invoiceId)
            ->get([
                'i.patient_id',
                'i.invoice_total',
                'i.paid_total',
                'i.payment_term',
                's.name',
                'd.price',
                'd.unit',
                'd.discount',
                'd.vat'
            ]);

        if ($invoice->isEmpty()) {
            return response()->json(['message' => 'Invoice not found'], 404);
        }

        $patient = Patient::find($invoice[0]->patient_id);
        // $details = InvoiceDetail::where('invoice_id', $invoiceId)->get();

        return response()->json([
            'invoice' => $invoice,
            // 'details' => $details,
            'patient' => $patient
        ]);
    }




    // public function show($invoiceId)
    // {
    //     $invoice = DB::table('invoices')
    //         ->join('invoice_details', 'invoices.id', '=', 'invoice_details.invoice_id')
    //         ->where('invoices.id', $invoiceId)
    //         ->get([
    //             'invoices.patient_id',
    //             'invoices.invoice_total',
    //             'invoices.paid_total',
    //             'invoices.payment_term',
    //             'invoice_details.id as service_id',
    //             'invoice_details.name as service_name',
    //             'invoice_details.price',
    //             'invoice_details.unit',
    //             'invoice_details.discount',
    //             'invoice_details.vat'
    //         ]);

    //     if ($invoice->isEmpty()) {
    //         return response()->json(['message' => 'Invoice not found'], 404);
    //     }

    //     // Group data by invoice and format it
    //     $invoiceData = [
    //         'patient_id' => $invoice[0]->patient_id,
    //         'invoice_total' => $invoice[0]->invoice_total,
    //         'paid_total' => $invoice[0]->paid_total,
    //         'payment_term' => $invoice[0]->payment_term,
    //         'services' => $invoice->map(function ($service) {
    //             return [
    //                 'id' => $service->service_id,
    //                 'name' => $service->service_name,
    //                 'price' => $service->price,
    //                 'unit' => $service->unit,
    //                 'discount' => $service->discount,
    //                 'vat' => $service->vat,
    //             ];
    //         }),
    //     ];

    //     return response()->json($invoiceData);
    // }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Invoice $invoice)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Invoice $invoice)
    {
        //
    }
}
