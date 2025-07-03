@extends('layouts.main')
@section('content')
    <style>
        .invoice-container {
            font-family: 'Segoe UI', sans-serif;

        }

        .line-bar {
            height: 5px;
            width: 30px;
            background-color: #013064;
        }

        .invoice-container * {
            box-sizing: border-box;

        }

        .invoice-header {
            background: url({{ asset('assets/invoice/heder-bg.png') }});
            background-repeat: no-repeat;
            background-size: cover;
            object-fit: cover;
            color: white;
            position: relative;

        }

        .invoice-thead {
            background: url("{{ asset('assets/invoice/thead.png') }}") no-repeat center center;
            background-size: cover;
            color: white;
        }

        .invoice-thead th {
            background-color: unset;
            color: white;
            /* Optional: dark overlay for text readability */
            padding: 12px;
            /* Ensures padding doesn't collapse with image */
        }

        .card {
            --bs-card-border-width: 0;
        }

        .invoice-header img {
            height: 120px;
            object-fit: cover
        }

        .invoice-header .slogan {
            letter-spacing: 3px;
            font-size: 12px;
        }

        .invoice-title {
            text-align: right;
        }

        .invoice-title h4 {
            margin: 0;
            font-weight: 500;
        }

        .table thead {
            background-color: #112b6b;
            color: white;
        }

        .table thead th {
            border: none;
        }

        .table tbody td {
            vertical-align: middle;
        }

        .total-box {
            background-color: #112b6b;
            color: white;
            padding: 10px 20px;
            border-radius: 10px;
            text-align: right;
        }

        .signature {
            height: 40px;
            border-bottom: 1px solid #000;
            width: 200px;
            margin-bottom: 5px;
        }

        .footer-note {
            font-size: 0.9rem;
        }

        .highlight {
            color: #771154;
            font-weight: bold;
        }

        .amount-due {
            color: #771154;
            font-weight: 700;
            font-size: 2rem;
        }

        .text-blue {
            color: #013064;
            font-weight: 400;
        }
    </style>
    <div class="container invoice-container">
        <div class="card shadow-sm my-3" style=" overflow: hidden; max-width: 70vw; margin: 0 auto;">

            <!-- Header -->
            <div class="invoice-header px-5 py-4 d-flex align-items-center">
                <img src="{{ asset('assets/invoice/logo.png') }}" alt="logo">
                <div class="ms-2">
                    <h2 class="mb-0 fw-bolder">HEALTH <span class="text-info fw-lighter">CARE</span></h2>
                    <small class="slogan">SPECIALIZED HOSPITAL</small>
                </div>
                <div class="invoice-title ms-auto">
                    <h2 class="mb-0 fw-bolder">INVOICE</h2>
                    <small>Invoice No : 01234</small>
                </div>
            </div>

            <!-- Info -->
            <div class="row py-4 px-5">
                <div class="col-md-6 ">
                    <p class="mb-1 text-blue">Invoice To:</p>
                    <h2 class="highlight">Francois Mercer</h2>
                    <div class="d-flex align-items-center gap-2">
                        <div>
                            <img src="{{ asset('assets/invoice/icons.png') }}" alt="icons">
                        </div>
                        <div>
                            <span>+123-456-7890<br></span>
                            <span>www.reallygreatsite.com<br></span>
                            <span>123 Anywhere St, Any City, ST 12345</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 text-end ">
                    <p class="mb-1 text-blue">Total Due:</p>
                    <h2 class="highlight"> $1,580</h2>
                    <div class="d-flex justify-content-end my-3">
                        <div class="line-bar"></div>
                    </div>
                    <p class="text-blue mt-2">Invoice Date: May 30, 2024</p>
                </div>
            </div>

            <!-- Table -->
            <div class="table-responsive px-4">
                <table class="table table-bordered mb-0">
                    <thead class="invoice-thead">
                        <tr>
                            <th>Description</th>
                            <th class="text-center">Qty</th>
                            <th class="text-center">Price</th>
                            <th class="text-end">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Web Design</td>
                            <td class="text-center">2</td>
                            <td class="text-center">$120</td>
                            <td class="text-end">$240</td>
                        </tr>
                        <tr>
                            <td>Logo Design</td>
                            <td class="text-center">4</td>
                            <td class="text-center">$100</td>
                            <td class="text-end">$400</td>
                        </tr>
                        <tr>
                            <td>Flyer Design</td>
                            <td class="text-center">2</td>
                            <td class="text-center">$120</td>
                            <td class="text-end">$240</td>
                        </tr>
                        <tr>
                            <td>Facebook Banner</td>
                            <td class="text-center">3</td>
                            <td class="text-center">$130</td>
                            <td class="text-end">$390</td>
                        </tr>
                        <tr>
                            <td>Business Card</td>
                            <td class="text-center">2</td>
                            <td class="text-center">$120</td>
                            <td class="text-end">$240</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <!-- Total -->
            <div class="row p-4">
                <div class="col-md-6">
                    <p class="mb-1"><strong>Payment Method:</strong></p>
                    <p>
                        Bank Name: Francisco Andrade<br>
                        Account Number: 0123 4567 8901
                    </p>
                </div>
                <div class="col-md-6 text-end">
                    <p>Sub-total: $1,510</p>
                    <p>Tax: —</p>
                    <div class="total-box">
                        <h5>Total: $1,580</h5>
                    </div>
                </div>
            </div>

            <!-- Signature & Terms -->
            <div class="row p-4 pt-0">
                <div class="col-md-6">
                    <p class="footer-note"><strong>Term and Conditions</strong><br>
                        Please send payment within 30 days of receiving this invoice. There will be 10% interest charge per
                        month on late invoice.</p>
                </div>
                <div class="col-md-6 text-end">
                    <div class="signature mb-2"></div>
                    <strong>BARTHOLOMEW</strong><br>
                    <small>Administrator</small>
                </div>
            </div>
        </div>

    </div>
@endsection