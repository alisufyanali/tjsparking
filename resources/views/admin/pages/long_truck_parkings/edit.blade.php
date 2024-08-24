<!-- resources/views/admin/pages/long_truck_parkings/index.blade.php -->
@extends('admin.layouts.app')

@section('content')

<!-- Messages and Errors -->
<div class="col-md-12">
    <div class="card table-card">
        <div class="card-header">
            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            <br>
            @endif
        </div>

        <!-- Create and Update Form -->
        <div class="card-block p-b-0">
                @php
                    $longTruckParking = $data['parking'];
                @endphp
                <form action="{{ route('admin.long_truck_parkings.update', $longTruckParking->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="mb-3">
                        <label for="picture" class="form-label">Picture</label>
                        <input type="file" class="form-control" id="picture" name="picture">
                        @if($longTruckParking->picture)
                            <img src="{{ asset('images/' . $longTruckParking->picture) }}" alt="Current Image" class="img-thumbnail mt-2" style="max-width: 200px;">
                        @endif
                    </div>
                    <div class="mb-3">
                        <label for="title" class="form-label">Title</label>
                        <input type="text" class="form-control" id="title" name="title" value="{{ old('title', $longTruckParking->title) }}" required>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea class="form-control" id="description" name="description" required>{{ old('description', $longTruckParking->description) }}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="number" class="form-label">Number</label>
                        <input type="number" class="form-control" id="number" name="number" value="{{ old('number', $longTruckParking->number) }}" required>
                    </div>
                    <div class="mb-3">
                        <label for="location" class="form-label">Location</label>
                        <input type="text" class="form-control" id="location" name="location" value="{{ old('location', $longTruckParking->location) }}" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            
        </div>
    </div>
</div>

@endsection
