<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Invoice;
use App\Models\InvoiceDetail;
use App\Models\InvoiceDetials;
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
    public function show(Invoice $invoice)
    {
        //
    }

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
