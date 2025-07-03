@extends('layouts.main')
@section('content')
    <div class="content">
        <h2>Dashboard</h2>
        <p class="text-muted">Welcome to your hospital management system.</p>

        <div class="row">
            <!-- Example Card -->
            <div class="col-md-3">
                <div class="card text-white bg-primary mb-3">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-user-injured"></i> Patients</h5>
                        <p class="card-text">120 Total</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card text-white bg-success mb-3">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-file-invoice-dollar"></i> Invoices</h5>
                        <p class="card-text">$12,000 Total</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card text-white bg-warning mb-3">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-user-md"></i> Doctors</h5>
                        <p class="card-text">18 On Staff</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card text-white bg-danger mb-3">
                    <div class="card-body">
                        <h5 class="card-title"><i class="fas fa-calendar-check"></i> Appointments</h5>
                        <p class="card-text">30 Today</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection