@csrf
@if ($mode === 'edit')
    @method('PUT')
@endif

<div class="mb-2">
    <label>Patient</label>
    <select name="patient_id" class="form-select">
        <option value="">--- Select Patient ---</option>
        @foreach ($patients as $option)
            <option value="{{ $option->id }}" {{ old('patient_id', $prescription->patient_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Consultant</label>
    <select name="consultant_id" class="form-select">
        <option value="">--- Select Consultant ---</option>
        @foreach ($consultants as $option)
            <option value="{{ $option->id }}" {{ old('consultant_id', $prescription->consultant_id ?? '') == $option->id ? 'selected' : '' }}>{{ $option->name ?? $option->id }}</option>
        @endforeach
    </select>
</div>
<div class="mb-2">
    <label>Cc</label>
    <input type="text" name="cc" value="{{ old('cc', $prescription->cc ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Rf</label>
    <input type="text" name="rf" value="{{ old('rf', $prescription->rf ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Investigation</label>
    <input type="text" name="investigation" value="{{ old('investigation', $prescription->investigation ?? '') }}" class="form-control">
</div>
<div class="mb-2">
    <label>Advice</label>
    <input type="text" name="advice" value="{{ old('advice', $prescription->advice ?? '') }}" class="form-control">
</div>
<button class="btn btn-success">{{ $mode === 'edit' ? 'Update' : 'Create' }}</button>