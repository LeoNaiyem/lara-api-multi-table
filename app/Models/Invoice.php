<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable = [
        'patient_id',
        'remark',
        'invoice_total',
        'paid_total',
        'discount',
        'vat',
        'payment_term',
        'previous_due',
    ];
}
