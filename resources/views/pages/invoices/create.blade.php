@extends('layouts.main')
@section('content')
    <div class="container invoice-container">
        <div id="invoice-area" class=" card shadow my-3 mx-auto" style="overflow: hidden; width: 100%; max-width: 950px;">

            {{-- <!-- Header --> --}}
            <div class="invoice-header p-5 d-flex align-items-center">
                <img src="{{ asset('assets/invoice/logo.png') }}" alt="logo">
                <div class="ms-2">
                    <h2 class="mb-0 fw-bolder">HEALTH <span class="text-info fw-lighter">CARE</span></h2>
                    <small class="slogan">SPECIALIZED HOSPITAL</small>
                </div>
                <div class="invoice-title ms-auto">
                    <h1 class="mb-0">INVOICE</h1>
                    <small>Invoice No : <strong class="fs-6">{{$newInvoiceNo}}</strong></small>
                </div>
            </div>

            {{-- <!-- Info --> --}}
            <div class="row py-4 px-5">
                <div class="col-6 ">
                    <p class="mb-1 text-blue">Invoice To:</p>
                    <select id="patient-id" class="form-select mb-2">
                        @foreach ($patients as $patient)
                            <option value="{{ $patient->id }}">{{$patient->name}}</option>
                        @endforeach
                    </select>
                    {{-- <h2 class="highlight">Francois Mercer</h2> --}}
                    <div class="d-flex align-items-center gap-2">
                        <div>
                            <img src="{{ asset('assets/invoice/icons.png') }}" alt="icons">
                        </div>
                        <div>
                            <span>+880-1754896587<br></span>
                            <span>www.newpatient.com<br></span>
                            <span>123 Cantonment St, Dhaka City, ST 1206</span>
                        </div>
                    </div>
                </div>
                <div class="col-6 text-end ">
                    <p class="mb-1 text-blue">Total Due:</p>
                    <h2 class="highlight"> $1,580</h2>
                    <div class="d-flex justify-content-end my-3">
                        <div class="line-bar"></div>
                    </div>
                    <p class="text-blue mt-2">Invoice Date: <strong>{{ now()->format('F d, Y') }}</strong></p>
                </div>
            </div>

            {{-- input --}}
            <div class="row px-5 my-4 align-items-center">
                <div class="col-4">
                    <label for="service-id">Service</label>
                    <select name="service-id" id="service-id" class="form-select">
                        @foreach ($services as $service)
                            <option value="{{ $service->id }}">{{$service->name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-3">
                    <label for="pice">Price</label>
                    <input id="price" name='price' type="number" class="form-control" placeholder="Price">
                </div>
                <div class="col-2">
                    <label for="unit">Unit</label>
                    <input id="unit" name="unit" type="number" class="form-control" placeholder="Unit">
                </div>
                <div class="col-2">
                    <label for="discount">Discount</label>
                    <input id="discount" name="discount" type="number" class="form-control" placeholder="Discount">
                </div>
                <div class="col-1 mt-4">
                    <input id="add" type="submit" value="Add" class="btn btn-info">
                </div>
            </div>

            {{-- <!-- Table --> --}}
            <div class="table-responsive">
                <table class="table table-striped mb-0">
                    <thead class="invoice-thead">
                        <tr>
                            <th class="text-left ps-5">Service Name</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Unit</th>
                            <th class="text-center">Discount</th>
                            <th class="text-center">Clear</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody id="table-body">
                        {{-- <tr>
                            <td class="text-left ps-5 text-blue">Web Design</td>
                            <td class="text-center text-blue">$100</td>
                            <td class="text-center text-blue">2</td>
                            <td class="text-center text-blue">$120</td>
                            <td class="text-center text-danger">
                                <button class="btn btn-sm btn-danger btn-outline">
                                    <i class="fa fa-trash"></i>
                                </button>
                            </td>
                            <td class="text-center text-blue">$240</td>
                        </tr> --}}
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
                        Bank Name: Francisco Andrade<br>
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
            <div class="row p-5 pt-0 align-items-center">
                <div class="col-6">
                    <textarea placeholder="Any special note..." id="remark" rows="3" cols="50" class="py-2 px-3"></textarea>
                </div>
                <div class="col-6 d-flex align-items-end text-blue flex-column">
                    <button onclick="createInvoice()" id="submit" class="btn btn-success">Create Invoice</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        const patient_id = document.getElementById('patient-id').value;
        const serviceSelect = document.getElementById('service-id');
        let subtotalDiv = document.getElementById('subtotal');
        let totalDiv = document.getElementById('total');
        const addBtn = document.getElementById('add');
        const selectedServices = [];


        // add service
        addBtn.addEventListener('click', () => {
            const service_id = serviceSelect.value;
            const service_name = serviceSelect.options[serviceSelect.selectedIndex].text;
            const price = document.getElementById('price').value;
            const unit = document.getElementById('unit').value;
            const discount = document.getElementById('discount').value;
            const tax = document.getElementById('tax').textContent;
            const service = {
                id: service_id,
                name: service_name,
                price: parseFloat(price),
                unit: parseFloat(unit),
                discount: parseFloat(discount),
                vat: 0,

            }
            selectedServices.push(service);
            showServices();
        });

        //show services
        function showServices() {
            const tBody = document.getElementById('table-body');
            let subtotal = 0;
            tBody.innerHTML = '';
            selectedServices.forEach((service, index) => {
                let lineTotal = service.price * service.unit - service.discount;
                subtotal += lineTotal;
                total += subtotal - service.vat;
                const tr = document.createElement('tr');
                tr.innerHTML = `
                                            <td class="text-left ps-5 text-blue">${service.name}</td>
                                            <td class="text-center text-blue">$${service.price}</td>
                                            <td class="text-center text-blue">$${service.unit}</td>
                                            <td class="text-center text-blue">$${service.discount}</td>
                                            <td class="text-center">
                                            <button onClick="removeService(${index})" class="btn btn-sm btn-danger">
                                            <i class="fa fa-trash"></i>
                                            </button>
                                            </td>
                                            <td class="text-center text-blue">
                                            $${lineTotal}
                                            </td>
                                            `;
                tBody.appendChild(tr);
            });
            subtotalDiv.textContent = subtotal;
            totalDiv.textContent = subtotal + 10;
        }

        //remove service
        function removeService(i) {
            selectedServices.splice(i, 1);
            showServices();
        }

        //create invoice
        async function createInvoice() {
            const total = document.getElementById('total').textContent;
            const remark = document.getElementById('remark').value;
            const data = {
                patient_id: patient_id,
                invoice_total: total,
                paid_total: total,
                payment_term: 'Cash',
                remark: remark,
                services: selectedServices
            };
            console.log(data);

            try {
                const response = await fetch('http://127.0.0.1:8000/api/invoices', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json'
                    },
                    body: JSON.stringify(data)
                });

                if (!response.ok) {
                    throw new Error(`Server error: ${response.status}`);
                }

                const result = await response.json();
                console.log('Invoice created:', result);
                alert('Invoice created successfully!');
                // Optionally, redirect or reset form
            } catch (error) {
                console.error('Failed to create invoice:', error);
                alert('Error creating invoice.');
            }
        }





    </script>
@endsection
@push('invoice-css')
    <link rel="stylesheet" href="{{ asset('assets/css/invoice.css') }}">
@endpush