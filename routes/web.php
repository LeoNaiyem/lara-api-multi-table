<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('pages.dashboard.home');
});
Route::get('invoices/view', function () {
    return view('pages.invoices.view');
});