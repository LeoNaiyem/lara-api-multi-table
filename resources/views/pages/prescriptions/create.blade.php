@extends('layouts.main')
{{-- @section('page-title', 'Prescription') --}}
@section('content')
    <div class="container">
        <div class=" prescription-card my-5 position-relative card ps-wrapper">
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
                            <p class="m-0 fw-bold">Doctor:</p>
                            <select name="doctor" id="doctor-id" class="my-1 form-select p-2">
                                <option value="">---- Select Doctor ---</option>
                                @foreach ($doctors as $doctor)
                                    <option value="{{ $doctor->id }}">{{$doctor->name}}</option>
                                @endforeach
                            </select>
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
                        <div class="patient-section">

                            <div class="">
                                <p class="m-0 fw-bold">Patient:</p>
                                <select name="patient-id" id="patient-id" class="form-select p-2 mt-1">
                                    <option value="">---- Select Patient ----</option>
                                    @foreach ($patients as $patient)
                                        <option value="{{ $patient->id }}">{{$patient->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            {{-- <p class="my-3">AGE: &nbsp; &nbsp;_____________</p> --}}
                            <div class="my-3 d-flex align-items-center gap-4">
                                <label for="age">AGE:</label>
                                <input class="form-control p-1" type="number" name="age" id="age" placeholder="Age">
                            </div>

                            {{-- <p class="mb-3">SEX: &nbsp; &nbsp;_____________</p> --}}
                            <div class="mb-3 d-flex align-items-center gap-4">
                                <p class="m-0">Sex:</p>
                                <div class="d-flex">
                                    <div class="form-check d-flex align-items-center gap-1">
                                        <input class="form-check-input" type="radio" name="sex" id="sex_male" value="0">
                                        <label class="form-check-label" for="sex_male">Male</label>
                                    </div>

                                    <div class="form-check d-flex align-items-center gap-1">
                                        <input class="form-check-input ms-1" type="radio" name="sex" id="sex_female"
                                            value="1">
                                        <label class="form-check-label" for="sex_female">Female</label>
                                    </div>

                                    <div class="form-check d-flex align-items-center gap-1">
                                        <input class="form-check-input ms-1" type="radio" name="sex" id="sex_other"
                                            value="2">
                                        <label class="form-check-label" for="sex_other">Other</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 ps-logo d-flex justify-content-end">
                        <img class="pe-none" src="{{ asset('assets/img/prescription/logo.png') }}" alt="top graphics">
                    </div>
                </div>

                {{-- mani --}}
                <div class="row ps-main column-gap-5 my-5 px-5">
                    <div class="col-8 border-end border-info-subtle pe-4">
                        {{-- head --}}
                        <div class=" d-flex justify-content-between">
                            <img class="pe-none" src="{{ asset('assets/img/prescription/rx_icon.png') }}" alt="rx icon"
                                height="40">
                            <p>DATE: <strong>{{now()->format('F d, Y')}}</strong></p>
                        </div>

                        {{-- input --}}
                        <div class="d-flex my-4 align-items-center gap-2">
                            <div class="" style="min-width: 150px; max-width: 200px;">
                                <label for="medicine-id">Medicines</label>
                                <select name="medicine-id" id="medicine-id" class="form-select p-1">
                                    @foreach ($medicines as $medicine)
                                        <option value="{{ $medicine->id }}">{{ $medicine->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="" style="min-width: 150px; max-width: 200px;">
                                <label for="dose_schedule">Dose</label>
                                <select id='dose' name="dose_schedule" class="form-select">
                                    <option value="1+0+0">Morning only</option>
                                    <option value="0+1+0">Afternoon only</option>
                                    <option value="0+0+1">Night only</option>
                                    <option value="1+1+0">Morning + Afternoon</option>
                                    <option value="1+0+1">Morning + Night</option>
                                    <option value="0+1+1">Afternoon + Night</option>
                                    <option value="1+1+1">Morning + Afternoon + Night</option>
                                </select>

                            </div>
                            <div class="">
                                <label for="course">Course</label>
                                <select id='course' name="course" class="form-select">
                                    <option value="3">3 Days</option>
                                    <option value="7">7 Days</option>
                                    <option value="15">15 Days</option>
                                    <option value="30">1 Month</option>
                                    <option value="60">2 Months</option>
                                    <option value="180">6 Months</option>
                                </select>
                            </div>
                            <div class="">
                                <label for="suggestion">Suggestion</label>
                                <select id='suggestion' name="suggestion" class="form-select">
                                    <option value="Before Meal 1Tab">Before Meal 1Tab</option>
                                    <option value="After Meal 1Tab">After Meal 1Tab</option>
                                    <option value="Before Meal 2Tab">Before Meal 2Tab</option>
                                    <option value="After Meal 2Tab">After Meal 2Tab</option>
                                </select>
                            </div>
                            <div class=" mt-4">
                                <input id="add" type="submit" value="Add" class="btn btn-info">
                            </div>
                        </div>

                        {{-- table --}}
                        <table class="table table-striped">
                            <thead class="table-info">
                                <tr>
                                    <th>Medicine</th>
                                    <th>Dose</th>
                                    <th>Corse</th>
                                    <th>Suggestion</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                            </thead>
                            <tbody id="tbody">

                            </tbody>
                        </table>
                    </div>
                    <div class="col-3">
                        <p class="fw-bold m-0">DIAGNOSIS:</p>
                        <div class="d-flex gap-2 align-items-center">
                            <select name="diagnosis" id="diagnosis" class="form-select my-1">
                                <option value="">----Select Tests----</option>
                                @foreach ($services as $service)
                                    <option value="{{ $service->name }}">{{$service->name}}</option>
                                @endforeach
                            </select>
                            <button id="add-diagnosis" class="btn btn-info">
                                Add
                            </button>
                        </div>
                        {{-- will be added here --}}
                        <ol id='diagnosis-container' class="list-group list-group-numbered mt-1">

                        </ol>

                        <hr>
                        <p class="fw-bold text-info text-uppercase">Clinical Notes</p>
                        <div class="mb-3">
                            <label for="cc" class="form-label">Chief Complaint (CC):</label>
                            <textarea class="form-control" id="cc" name="cc" rows="2"
                                placeholder="e.g., Fever, cough..."></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="rf" class="form-label">Relevant Findings (RF):</label>
                            <textarea class="form-control" id="rf" name="rf" rows="2"
                                placeholder="e.g., Smoker, diabetic..."></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="advice" class="form-label">Doctor's Advice:</label>
                            <textarea class="form-control" id="advice" name="advice" rows="2"
                                placeholder="e.g., Take rest, drink fluids..."></textarea>
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
                <button id="save-btn" class="btn btn-lg btn-info position-absolute top-25 start-50">
                    <i class="fa fa-cart"></i>
                    Save
                </button>
                <img class="pe-none" src="{{ asset('assets/img/prescription/border_bottom.png') }}" alt="bottom graphics">
            </div>
        </div>
    </div>

    <script>
        const items = [];
        document.getElementById('add').addEventListener('click', () => {
            const medicineEl = document.getElementById('medicine-id');
            const medicineId = medicineEl.value;
            const medicineName = medicineEl.options[medicineEl.selectedIndex].text;
            const doseEl = document.getElementById('dose');
            const doseValue = doseEl.value;
            const doseName = doseEl.options[doseEl.selectedIndex].text;
            const courseEl = document.getElementById('course');
            const courseValue = courseEl.value;
            const courseName = courseEl.options[courseEl.selectedIndex].text;
            const suggestion = document.getElementById('suggestion').value;
            const item = {
                medicine_id: medicineId,
                medicine_name: medicineName,
                dose: doseValue,
                dose_name: doseName,
                days: courseValue,
                days_name: courseName,
                suggestion,
            }
            items.push(item);
            showItems();
        });

        // show selected service items
        function showItems() {
            const tbody = document.getElementById('tbody');
            tbody.innerHTML = '';
            items.forEach((item, index) => {
                const tr = document.createElement('tr');
                tr.innerHTML = `
                             <td>${item.medicine_name}</td>
                            <td>${item.dose_name}</td>
                            <td>${item.days_name}</td>
                            <td>${item.suggestion}</td>
                            <td class="text-center">
                            <button onclick="removeItem(${index})" class="btn btn-sm btn-danger">
                                <i class="fa fa-trash"></i>
                            </button>
                            </td> 
                        `;
                tbody.appendChild(tr);
            })
        }
        //remove selected service Item
        function removeItem(i) {
            items.splice(i, 1);
            showItems();
        };

        //add diagnosis item
        const diagnosisItems = [];
        let diagnosisItemsStr = '';
        document.getElementById('add-diagnosis').addEventListener('click', () => {
            const diagnosis = document.getElementById('diagnosis').value;
            diagnosisItems.push(diagnosis);
            diagnosisItemsStr = diagnosisItems.join(', ');
            showDiagnosis();
            console.log(diagnosisItemsStr);
        });

        // show selected diagnosis Items
        function showDiagnosis(){
            const diagnosisContainer = document.getElementById('diagnosis-container');
            diagnosisContainer.innerHTML='';
            diagnosisItems.forEach((item,index)=>{
                const li=document.createElement('li');
                li.innerHTML=`
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        ${item}
                        <span style="cursor:pointer;height:20px;width:20px" onclick="removeDiagnosisItem(${index})" class="d-flex justify-content-center align-items-center rounded-pill bg-danger bg-opacity-25">
                            <span style="margin-top:-5px">x</span>
                            </span>
                    </li>
                `;
                diagnosisContainer.appendChild(li);
            });
        }

        // remove diagnosis item
        function removeDiagnosisItem(i){
            diagnosisItems.splice(i,1);
            showDiagnosis();
        }
    </script>
@endsection