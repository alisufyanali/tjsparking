<!-- resources/views/admin/pages/long_truck_parkings/index.blade.php -->
@extends('admin.layouts.app')

@section('content')

<!-- testimonial and top selling start -->
<div class="col-md-12">
    <div class="card table-card">
        <div class="card-header">
                    <div class="card-block p-b-0">

            <h1>Long Truck Parkings</h1>
            <a href="{{ route('admin.long_truck_parkings.create') }}" class="btn btn-primary waves-effect" >Create New Parking</a>
 
        <br>
 
    
        <div class="table-responsive" >
            <table id="dom-jqry" class="table table-striped table-bordered nowrap">
            <thead>
                <tr>
                    <th>title</th>
                    <th>Desc.</th>
                    <th>Picture</th>
                    <th>location</th>
                    <th>Number</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @if(isset($data['parkings']))
                @foreach ($data['parkings'] as $parking)
                <tr>
                    <td>{{ $parking->title }}</td>
                    <td>
                        <p style="    word-break: break-all;">
                        {{ $parking->description }}        
                        </p>
                    </td>
                    <td>    <img src="{{ asset('public/images/' . $parking->picture) }}" style="width:100px" alt="{{ $parking->title }}"></td>
                    <td>{{ $parking->location }}</td>
                    <td>{{ $parking->number }}</td>
                    <td>
                       <a href="{{ route('admin.long_truck_parkings.edit', $parking->id) }}" class="btn btn-primary waves-effect">Edit</a>  
                        <form action="{{ route('admin.long_truck_parkings.destroy', $parking->id) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit"  class="btn btn-danger waves-effect">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
                @endif
            </tbody>
        </table>
    </div>
    </div>
    </div>
</div>
@endsection
