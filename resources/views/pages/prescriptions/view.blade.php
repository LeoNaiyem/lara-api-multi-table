@extends('layouts.main')
{{-- @section('page-title', 'Prescription') --}}
@section('content')
    <div class="container">
        <div class=" prescription-card my-5 position-relative card ps-wrapper">
            <div class="ps-watermark">
                <img src="{{ asset('assets/img/prescription/logo.png') }}" alt="ps logo">
            </div>
            <div class="ps-top">
                <img src="{{ asset('assets/img/prescription/border_top.png') }}" alt="top graphics">
            </div>
            <div class="ps-body">
                <div class="row ps-head">
                    <div class="col-8">
                        <h1>Dr. David Williams</h1>
                        <p class="text-danger fw-bold">
                            Health Psychologist
                        </p>
                        <p>
                            MBBS, MD I Medicine, MCPS
                        </p>
                        <p>
                            Specialist in Health Psychologist
                        </p>
                        <p class="text-uppercase fw-bold">
                            [Health care specialized hospital]
                        </p>
                    </div>
                    <div class="col-4 ps-logo d-flex justify-content-end">
                        <img src="{{ asset('assets/img/prescription/logo.png') }}" alt="top graphics">
                    </div>
                </div>
                <div class="row ps-main column-gap-5 mt-5 px-5">
                    <div class="col-7 d-flex justify-content-between border-end border-info-subtle pe-4">
                        <img src="{{ asset('assets/img/prescription/rx_icon.png') }}" alt="rx icon" height="40">
                        <p>DATE: _____________</p>
                    </div>
                    <div class="col-4">
                        <p>NAME: _____________</p>
                        <p class="my-3">AGE: &nbsp; &nbsp;_____________</p>
                        <p class="mb-3">SEX: &nbsp; &nbsp;_____________</p>
                        <p>DIAGNOSIS:</p>

                    </div>
                </div>
            </div>
            <div class="ps-bottom position-relative">
                <div class="d-flex column-gap-5">
                    <div class="ps-timestamp">
                        <p>
                            <i class="fa-solid fa-calendar-days"></i>&nbsp;
                            <span class="fw-light"> Days</span>: Mon, Tue, Wed, Thu, Fri
                        </p>
                        <p>
                            <i class="fa-solid fa-clock"></i>&nbsp;
                            <span class="fw-light"> Timings</span>: 05:00 PM - 08:30 PM
                        </p>
                    </div>
                    <div class="ps-address">
                        <p>123-456-7890, 444-666-8899</p>
                        <p>Street address here, City State, Zip Code</p>
                    </div>
                </div>
                <img src="{{ asset('assets/img/prescription/border_bottom.png') }}" alt="bottom graphics">
            </div>
        </div>
    </div>
    <div class="print-button">
        <button class="btn-print" onclick="window.print()">Print Prescription</button>
    </div>
@endsection