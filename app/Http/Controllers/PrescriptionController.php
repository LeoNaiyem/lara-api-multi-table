<?php

namespace App\Http\Controllers;

use App\Models\Doctor;
use App\Models\Medicine;
use App\Models\Prescription;
use App\Models\Service;
use Illuminate\Http\Request;
use App\Models\Patient;
use App\Models\Consultant;


class PrescriptionController extends Controller
{
    public function index()
    {
        $prescriptions = Prescription::orderBy('id', 'DESC')->paginate(10);
        return view('pages.prescriptions.index', compact('prescriptions'));
    }

    public function create()
    {
        $patients = Patient::all();
        $consultants = Consultant::all();
        $doctor = Doctor::all();
        $medicines = Medicine::all();
        $services = Service::all();

        return view('pages.prescriptions.create', [
            'mode' => 'create',
            'prescription' => new Prescription(),
            'doctors' => $doctor,
            'patients' => $patients,
            'consultants' => $consultants,
            'medicines' => $medicines,
            'services' => $services,

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Prescription::create($data);
        return redirect()->route('prescriptions.index')->with('success', 'Successfully created!');
    }

    public function show(Prescription $prescription)
    {
        return view('pages.prescriptions.view', compact('prescription'));
    }

    public function edit(Prescription $prescription)
    {
        $patients = Patient::all();
        $consultants = Consultant::all();

        return view('pages.prescriptions.edit', [
            'mode' => 'edit',
            'prescription' => $prescription,
            'patients' => $patients,
            'consultants' => $consultants,

        ]);
    }

    public function update(Request $request, Prescription $prescription)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $prescription->update($data);
        return redirect()->route('prescriptions.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Prescription $prescription)
    {
        $prescription->delete();
        return redirect()->route('prescriptions.index')->with('success', 'Successfully deleted!');
    }
}