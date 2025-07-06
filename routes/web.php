<?php

use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\PrescriptionController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('pages.dashboard.home');
});

Route::resource('invoices', InvoiceController::class);
Route::resource('prescriptions', PrescriptionController::class);