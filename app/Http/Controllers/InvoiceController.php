<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use App\Models\Patient;
use App\Models\Service;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $invoices = Invoice::orderBy('id','desc')->paginate(10);
        return view('pages.invoices.index', compact('invoices'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $lastInvoiceId = Invoice::max('id') ?? 0;
        $newInvoiceNo = 'INV-' . str_pad($lastInvoiceId + 1, 5, '0', STR_PAD_LEFT);

        $invoices = Invoice::all();
        $patients = Patient::all();
        $services = Service::all();

        return view('pages.invoices.create', compact('invoices', 'newInvoiceNo', 'patients', 'services'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Invoice $invoice)
    {
        $pId = $invoice->patient_id;
        $patient = Patient::find($pId);
        return view('pages.invoices.view', compact('patient', 'invoice'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
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
    public function destroy(Invoice $invoice)
    {
        $invoice->delete();
        return redirect(route('invoices.index'))->with('message', 'Successfully Deleted!');
    }
}
