<!-- resources/views/admin/pages/long_truck_parkings/index.blade.php -->
@extends('admin.layouts.app')

@section('content')

<!-- testimonial and top selling start -->
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
        <div class="card-block p-b-0">

            <form action="{{ route('admin.long_truck_parkings.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="mb-3">
                    <label for="picture" class="form-label">Picture</label>
                    <input type="file" class="form-control" id="picture" name="picture">
                </div>
                <div class="mb-3">
                    <label for="title" class="form-label">Title</label>
                    <input type="text" class="form-control" id="title" name="title" required>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" name="description" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="number" class="form-label">Number</label>
                    <input type="number" class="form-control" id="number" name="number" required>
                </div>
                <div class="mb-3">
                    <label for="location" class="form-label">Location</label>
                    <input type="text" class="form-control" id="location" name="location" required>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>

        </div>
    </div>
</div>
@endsection