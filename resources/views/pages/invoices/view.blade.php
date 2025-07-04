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
            background: url("{{ asset('assets/invoice/footer-bg.png') }}") no-repeat center center;
            background-size: cover;
            color: white;
        }

        .invoice-thead th {
            background-color: unset;
            color: white;
            padding: 12px;
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
            background: url("http://127.0.0.1:8000/assets/invoice/total.png") no-repeat right center;
            background-size: auto 100%;
            color: white;
            padding: 10px 20px;
            text-align: right;
            margin-right: -12px;
            display: flex;
            align-items: center;
            justify-content: flex-end;
            gap: 100px;
            padding-right: 40px;
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
            color: #013064 !important;
        }

        .subtotal-box {
            padding-right: 35px;
            gap: 105px;
            font-weight: 700;
            color: #013064;
        }
    </style>
    <div class="container invoice-container">
        <div class="card shadow my-3" style=" overflow: hidden; max-width: 60vw; margin: 0 auto;">

            <!-- Header -->
            <div class="invoice-header p-5 d-flex align-items-center">
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
            <div class="table-responsive">
                <table class="table table-bordered mb-0">
                    <thead class="invoice-thead">
                        <tr>
                            <th class="text-left ps-5">Description</th>
                            <th class="text-center">Qty</th>
                            <th class="text-center">Price</th>
                            <th class="text-center ">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-left ps-5 text-blue">Web Design</td>
                            <td class="text-center text-blue">2</td>
                            <td class="text-center text-blue">$120</td>
                            <td class="text-center text-blue">$240</td>
                        </tr>
                        <tr>
                            <td class="text-left ps-5">Logo Design</td>
                            <td class="text-center text-blue">4</td>
                            <td class="text-center text-blue">$100</td>
                            <td class="text-center text-blue">$400</td>
                        </tr>
                        <tr>
                            <td class="text-left ps-5">Flyer Design</td>
                            <td class="text-center text-blue">2</td>
                            <td class="text-center text-blue">$120</td>
                            <td class="text-center">$240</td>
                        </tr>
                        <tr>
                            <td class="text-left ps-5">Facebook Banner</td>
                            <td class="text-center text-blue">3</td>
                            <td class="text-center text-blue">$130</td>
                            <td class="text-center">$390</td>
                        </tr>
                        <tr>
                            <td class="text-left ps-5">Business Card</td>
                            <td class="text-center text-blue">2</td>
                            <td class="text-center text-blue">$120</td>
                            <td class="text-center">$240</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <!-- Total -->
            <div class="row p-4 align-items-center">
                <div class="col-md-6 ps-5">
                    <p class="mb-1 text-blue">
                        <strong>Payment Method: </strong><span></span>
                    </p>
                    <p>
                        Bank Name: Francisco Andrade<br>
                        Account Number: 0123 4567 8901
                    </p>
                </div>
                <div class="col-md-6 text-end p-0">
                    <div class="subtotal-box d-flex justify-content-end align-items-center">
                        <div>
                            <p>Sub-total: </p>
                            <p>Tax:</p>
                        </div>
                        <div>
                            <p> $1,510</p>
                            <p> $10</p>
                        </div>
                    </div>
                    <div class="total-box">
                        <h5 class="m-0">Total: </h5>
                        <h5 class="m-0">$1,580</h5>
                    </div>
                </div>
            </div>

            <!-- Signature & Terms -->
            <div class="row p-5 pt-0">
                <div class="col-md-6">
                    <p class="footer-note text-blue">
                        <strong class="fw-bold fs-5">Term and Conditions</strong><br>
                        Please send payment within 30 days of receiving this invoice. There will be 10% interest charge per
                        month on late invoice.
                    </p>
                </div>
                <div class="col-md-6 d-flex align-items-end text-blue flex-column">
                    <div class="text-center">
                        <div class="signature mb-2"></div>
                        <h5 class="text-center fw-bolder m-0 text-blue">NAIYEM HOSSAIN</h5>
                        <small class="text-center">Administrator</small>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection