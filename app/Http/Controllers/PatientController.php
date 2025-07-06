<?php

namespace App\Http\Controllers;

use App\Models\Patient;
use Illuminate\Http\Request;


class PatientController extends Controller
{
    public function index()
    {
        $patients = Patient::orderBy('id','DESC')->paginate(10);
        return view('pages.patients.index', compact('patients'));
    }

    public function create()
    {

        return view('pages.patients.create', [
            'mode' => 'create',
            'patient' => new Patient(),

        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        Patient::create($data);
        return redirect()->route('patients.index')->with('success', 'Successfully created!');
    }

    public function show(Patient $patient)
    {
        return view('pages.patients.view', compact('patient'));
    }

    public function edit(Patient $patient)
    {

        return view('pages.patients.edit', [
            'mode' => 'edit',
            'patient' => $patient,

        ]);
    }

    public function update(Request $request, Patient $patient)
    {
        $data = $request->all();
        if ($request->hasFile('photo')) {
            $data['photo'] = $request->file('photo')->store('uploads', 'public');
        }
        $patient->update($data);
        return redirect()->route('patients.index')->with('success', 'Successfully updated!');
    }

    public function destroy(Patient $patient)
    {
        $patient->delete();
        return redirect()->route('patients.index')->with('success', 'Successfully deleted!');
    }
}