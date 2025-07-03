<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class InvoiceResouce extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'patient_id' => $this->patient_id,
            'remark' => $this->remark,
            'invoice_total' => $this->invoice_total,
            'paid_total' => $this->paid_total,
            'discount' => $this->discount,
            'vat' => $this->vat,
            'payment_term' => $this->payment_term,
            'previous_due' => $this->previous_due,
            'created_at' => $this->toDateTimeString(),
            'updated_at' => $this->toDateTimeString(),
        ];
    }
}
