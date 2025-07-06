@extends('layouts.main')
@section('content')
    <div class="container invoice-container">
        <div id="invoice-area" class=" card shadow my-3 mx-auto" style="overflow: hidden; width: 100%; max-width: 950px;">

            <!-- Header -->
            <div class="invoice-header p-5 d-flex align-items-center">
                <img src="{{ asset('assets/invoice/logo.png') }}" alt="logo">
                <div class="ms-2">
                    <h2 class="mb-0 fw-bolder">HEALTH <span class="text-info fw-lighter">CARE</span></h2>
                    <small class="slogan">SPECIALIZED HOSPITAL</small>
                </div>
                <div class="invoice-title ms-auto">
                    <h1 class="mb-0">INVOICE</h1>
                    <small class="fw-light">Invoice No :
                        <strong>{{'INV-' . str_pad($invoice->id, 5, '0', STR_PAD_LEFT)  }}</strong></small>
                </div>
            </div>

            <!-- Info -->
            <div class="row py-4 px-5">
                <div class="col-6 ">
                    <p class="mb-1 text-blue">Invoice To:</p>
                    <h2 class="highlight">{{ $patient->name }}</h2>
                    <div class="d-flex align-items-center gap-2">
                        <div>
                            <img src="{{ asset('assets/invoice/icons.png') }}" alt="icons">
                        </div>
                        <div>
                            <span>{{ $patient->mobile }}<br></span>
                            <span>www.reallygreatsite.com<br></span>
                            <span>123 Anywhere St, Any City, ST 12345</span>
                        </div>
                    </div>
                </div>
                <div class="col-6 text-end ">
                    <p class="mb-1 text-blue">Previous Due:</p>
                    <h2 class="highlight"> $1,580</h2>
                    <div class="d-flex justify-content-end my-3">
                        <div class="line-bar"></div>
                    </div>
                    <p class="text-blue mt-2">Invoice Date: <strong>{{ $invoice->created_at->format('F d, Y') }}</strong>
                    </p>
                </div>
            </div>

            <!-- Table -->
            {{-- <!-- Table --> --}}
            <div class="table-responsive">
                <table class="table table-striped mb-0">
                    <thead class="invoice-thead">
                        <tr>
                            <th class="text-left ps-5">Service Name</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Unit</th>
                            <th class="text-center">Discount</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody id="table-body">

                    </tbody>
                </table>
            </div>


            <!-- Total -->
            <div class="row p-4 align-items-center">
                <div class="col-6 ps-5">
                    <p class="mb-1 text-blue">
                        <strong>Payment Method: </strong><span></span>
                    </p>
                    <p>
                        Bank Name: Islami Bank PLC.<br>
                        Account Number: 0123 4567 8901
                    </p>
                </div>
                <div class="col-6 text-end p-0">
                    <div class="subtotal-box d-flex justify-content-end align-items-center">
                        <div>
                            <p>Sub-total: </p>
                            <p>Tax: </p>
                        </div>
                        <div>
                            <p>$<span id="subtotal">1,510</span></p>
                            <p>$<span id="tax">10</span></p>
                        </div>
                    </div>
                    <div class="total-box">
                        <h5 class="m-0">Total: </h5>
                        <h5 class="m-0">
                            $<span id="total">1,580</span>
                        </h5>
                    </div>
                </div>
            </div>

            <!-- Signature & Terms -->
            <div class="row p-5 pt-0">
                <div class="col-6">
                    <p class="footer-note text-blue">
                        <strong class="fw-bold fs-5">Term and Conditions</strong><br>
                        Please send payment within 30 days of receiving this invoice. There will be 10% interest charge per
                        month on late invoice.
                    </p>
                </div>
                <div class="col-6 d-flex align-items-end text-blue flex-column">
                    <div class="text-center">
                        <div class="signature mb-2"></div>
                        <h5 class="text-center fw-bolder m-0 text-blue">NAIYEM HOSSAIN</h5>
                        <small class="text-center">Administrator</small>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center my-4 no-print">
            <button class="btn btn-primary" onclick="window.print()">Print Invoice</button>
        </div>
    </div>

    {{-- for invoice id any of these can be used --}}
    <input type="hidden" id="invoice-id" value="{{ $invoice->id }}">

    {{-- <div id="invoice-data" data-invoice-id="{{ $invoiceId }}" style="display: none;"></div> --}}
    <script>
        const baseURL = "http://127.0.0.1:8000/api";
        const invoiceId = document.getElementById('invoice-id').value;
        // const invoiceId = document.getElementById('invoice-data').dataset.invoiceId;


        // fetch data based on invoice id
        async function fetchData() {
            try {
                const response = await fetch(`${baseURL}/invoices/${invoiceId}`, {
                    method: 'GET',
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    }
                });
                if (!response.ok) {
                    throw new Error(`Server Error: ${response.status}`);
                }
                const result = await response.json();
                showServices(result);
            } catch (err) {
                console.log(err);
            }
        }


        //show services
        function showServices(data) {
            const services = data.invoice;
            // const patient = data.patient;
            console.log(services);
            const tBody = document.getElementById('table-body');
            let subtotalDiv = document.getElementById('subtotal');
            let totalDiv = document.getElementById('total');
            let subtotal = 0;
            // let total=0;
            tBody.innerHTML = '';
            services.forEach((service, index) => {
                let lineTotal = service.price * service.unit - service.discount;
                subtotal += lineTotal;
                // total += subtotal - service.vat;
                const tr = document.createElement('tr');
                tr.innerHTML = `
                        <td class="text-left ps-5 text-blue">${service.name}</td>
                        <td class="text-center text-blue">$${service.price}</td>
                        <td class="text-center text-blue">$${service.unit}</td>
                        <td class="text-center text-blue">$${service.discount}</td>
                        <td class="text-center text-blue">
                        $${lineTotal}
                        </td>
                        `;
                tBody.appendChild(tr);
            });
            subtotalDiv.textContent = subtotal;
            totalDiv.textContent = subtotal + 10;
        }
        fetchData();
    </script>

@endsection
@push('invoice-css')
    <link rel="stylesheet" href="{{ asset('assets/css/invoice.css') }}">
@endpush