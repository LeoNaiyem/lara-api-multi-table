<?php

use App\Http\Controllers\Api\InvoiceController;
use App\Http\Controllers\Api\PrescriptionController;
use App\Models\Prescription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::apiResources([
    'invoices' => InvoiceController::class,
    'prescriptions'=>PrescriptionController::class,
]);