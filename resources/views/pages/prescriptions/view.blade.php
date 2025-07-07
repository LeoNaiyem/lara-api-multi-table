@extends('layouts.main')
{{-- @section('page-title', 'Prescription') --}}
@section('content')
    {{-- <div class="container">
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
                        <h1>{{ $doctor->name }}</h1>
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
                        <p>DATE: <strong>{{now()->format('F d, Y')}}</strong></p>
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
    </div> --}}

    <div class="container">
        <div style="max-width: 70vw" class=" prescription-card my-5 position-relative card ps-wrapper">
            {{-- water mark logo --}}
            <div class="ps-watermark">
                <img src="{{ asset('assets/img/prescription/logo.png') }}" alt="ps logo">
            </div>

            {{-- top border --}}
            <div class="ps-top">
                <img class="pe-none" src="{{ asset('assets/img/prescription/border_top.png') }}" alt="top graphics">
            </div>

            {{-- body section --}}
            <div class="ps-body">
                {{-- head --}}
                <div class="row ps-head">
                    <div class="col-9 d-flex gap-4">
                        <div style="min-width: 370px" class="doctor-section pe-5 border-end border-info-subtle">
                            <p class="mb-1 fw-bold">Doctor:</p>
                            <h2>{{ $doctor->name }}</h2>
                            <p class="text-danger fw-bold mb-1 text-uppercase">Health Psychologist</p>
                            <p class="mb-1">
                                MBBS, MD I Medicine, MCPS
                            </p>
                            <p class="mb-1">
                                Specialist in Health Psychologist
                            </p>
                            <p class="text-uppercase text-info fw-bold">
                                [Health care specialized hospital]
                            </p>
                        </div>
                        <div class="patient-section">

                            <div class="">
                                <p class="mb-1 fw-bold">Patient:</p>
                                <h4 class="mb-1">{{$patient->name}}</h4>
                                <p class="text-danger fw-bold text-uppercase mb-1">
                                    {{$patient->profession ? $patient->profession : "N/A"}}
                                </p>
                            </div>
                            <div class="my-2 d-flex align-items-center gap-4">
                                <p class="m-0">AGE:</p><strong>{{$patient->age}}</strong>
                            </div>
                            <div class="mb-2 d-flex align-items-center gap-4">
                                <p class="m-0">Sex:</p>
                                <strong>{{$patient->gender == 0 ? "Male" : "Female"}}</strong>
                            </div>
                            <div class="mb-2 d-flex align-items-center gap-1">
                                <p class="m-0">Mobile:</p>
                                <strong>{{$patient->mobile}}</strong>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 ps-logo d-flex justify-content-end">
                        <img class="pe-none" src="{{ asset('assets/img/prescription/logo.png') }}" alt="top graphics">
                    </div>
                </div>

                {{-- mani --}}
                <div class="row ps-main column-gap-5 my-5 px-5">
                    <div class="col-7 border-end border-info-subtle pe-4">
                        {{-- head --}}
                        <div class=" d-flex justify-content-between align-items-center">
                            <img class="pe-none" src="{{ asset('assets/img/prescription/rx_icon.png') }}" alt="rx icon"
                                height="40">
                            <p class="m-0">DATE: <strong>{{ now()->format('F d, Y') }}</strong></p>
                        </div>

                        {{-- table --}}
                        <table class="table table-striped my-3">
                            <thead class="table-info">
                                <tr>
                                    <th>Medicine</th>
                                    <th>Dose</th>
                                    <th>Corse</th>
                                    <th>Suggestion</th>
                                </tr>
                            </thead>
                            <tbody id="tbody">

                            </tbody>
                        </table>
                    </div>
                    <div class="col-4">
                        <p class="fw-bold mb-2">DIAGNOSIS:</p>
                        <ol id='diagnosis-container' class="list-group list-group-numbered mt-1">

                        </ol>

                        <hr>
                        <p style="letter-spacing: 2px" class="fw-bold text-info text-uppercase">Clinical Notes</p>
                        <div class="mb-3">
                            <p class="mb-1 fw-semibold">Chief Complaint (CC):</p>
                            <p class="m-0 fw-light">{{$prescription->cc}}</p>
                        </div>
                        <div class="mb-3">
                            <p class="mb-1 fw-semibold">Relevant Findings (RF):</p>
                            <p class="m-0 fw-light">{{$prescription->rf}}</p>
                        </div>
                        <div class="mb-3">
                            <p class="mb-1 fw-semibold">Doctor's Advice:</p>
                            <p class="m-0 fw-light">{{$prescription->advice}}</p>
                        </div>
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
                <button id="save-btn" onclick="window.print()" class=" btn btn-print no-print btn-lg btn-info
                    position-absolute top-25 start-50">
                    Print
                </button>
                <img class="pe-none" src="{{ asset('assets/img/prescription/border_bottom.png') }}" alt="bottom graphics">
            </div>
        </div>
    </div>
    <input type="hidden" id="prescription-id" value="{{ $prescription->id }}">
    <script type="module">

        const baseURL = "http://127.0.0.1:8000/api";
        const prescriptionId = document.getElementById('prescription-id').value;
        let data = null;


        // fetch data based on prescription id
        async function fetchData() {
            try {
                const response = await fetch(`${baseURL}/prescriptions/${prescriptionId}`, {
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
                data = result.prescription;
                showMedicines(result.prescription);
                showDiagnosis();
            } catch (err) {
                console.log(err);
            }
        }
        await fetchData();
        console.log(data);

        //show investigations
        function showDiagnosis(investigations) {
            const diagnosisStr = data[0].investigation;
            const diagnosisArr = diagnosisStr.split(',');
            const diagnosisContainer = document.getElementById('diagnosis-container');
            diagnosisContainer.innerHTML = '';
            diagnosisArr.forEach((item, index) => {
                const li = document.createElement('li');
                li.innerHTML = `
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                ${index + 1}.&nbsp; ${item}                            
                            </li>
                        `;
                diagnosisContainer.appendChild(li);
            });
        }


        //show given medicines
        function showMedicines(items) {
            const tbody = document.getElementById('tbody');
            tbody.innerHTML = '';
            items.forEach((item, index) => {
                const tr = document.createElement('tr');
                tr.innerHTML = `
                            <td>${item.medicine_name}</td>
                            <td>${item.dose}</td>
                            <td>${item.days} Days</td>
                            <td>${item.suggestion}</td>
                        `;
                tbody.appendChild(tr);
            })
        }
    </script>
@endsection