@extends('admin.layouts.app')

@section('style')


<style>
.error {
    color: red;
}
</style>
@endsection




@section('content')

<!-- testimonial and top selling start -->
<div class="col-md-12">
    <div class="card table-card">
        <div class="card-header">

            @if ($message = Session::get('success'))
            <div class="alert alert-success mt-2">
                <p>{{ $message }}</p>
            </div>
            @endif

            <div class="card-header-right">
                <ul class="list-unstyled card-option">
                    <li class="first-opt"><i class="feather icon-chevron-left open-card-option"></i></li>
                    <li><i class="feather icon-maximize full-card"></i></li>
                    <li><i class="feather icon-minus minimize-card"></i></li>
                    <li><i class="feather icon-refresh-cw reload-card"></i></li>
                    <li><i class="feather icon-trash close-card"></i></li>
                    <li><i class="feather icon-chevron-left open-card-option"></i></li>
                </ul>
            </div>
        </div>
        <div class="card-block p-b-0">
            <h2>Add Homepage Content</h2>
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
            
            <form action="{{ route('admin.homepage_content.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="spec_of_resort">Specification of Resort</label>
                    <textarea class="form-control" id="spec_of_resort"
                        name="spec_of_resort">{{ old('spec_of_resort') }}</textarea>
                </div>
                <div class="form-group">
                    <label for="spec_of_resort_1_img">Resort Image 1</label>
                    <input type="file" class="form-control" id="spec_of_resort_1_img" name="spec_of_resort_1_img">
                </div>
                <div class="form-group">
                    <label for="spec_of_resort_1_content">Resort Content 1</label>
                    <textarea class="form-control" id="spec_of_resort_1_content"
                        name="spec_of_resort_1_content">{{ old('spec_of_resort_1_content') }}</textarea>
                </div>
                <div class="form-group">
                    <label for="spec_of_resort_2_img">Resort Image 2</label>
                    <input type="file" class="form-control" id="spec_of_resort_2_img" name="spec_of_resort_2_img">
                </div>
                <div class="form-group">
                    <label for="spec_of_resort_2_content">Resort Content 2</label>
                    <textarea class="form-control" id="spec_of_resort_2_content"
                        name="spec_of_resort_2_content">{{ old('spec_of_resort_2_content') }}</textarea>
                </div>
                <div class="form-group">
                    <label for="spec_of_resort_3_img">Resort Image 3</label>
                    <input type="file" class="form-control" id="spec_of_resort_3_img" name="spec_of_resort_3_img">
                </div>
                <div class="form-group">
                    <label for="spec_of_resort_3_content">Resort Content 3</label>
                    <textarea class="form-control" id="spec_of_resort_3_content"
                        name="spec_of_resort_3_content">{{ old('spec_of_resort_3_content') }}</textarea>
                </div>
                <div class="form-group">
                    <label for="virtual_link">Virtual Link</label>
                    <input type="text" class="form-control" id="virtual_link" name="virtual_link"
                        value="{{ old('virtual_link') }}">
                </div>
                
                <div class="form-group">
                    <label for="virtual_img">Virtual Image</label>
                    <input type="file" class="form-control" id="virtual_img" name="virtual_img">
                </div>

                <div class="form-group">
                    <label for="virtual_count_1">Virtual Count 1</label>
                    <input type="text" class="form-control" id="virtual_count_1" name="virtual_count_1"
                        value="{{ old('virtual_count_1') }}">
                </div>
                
                <div class="form-group">
                    <label for="virtual_text_1">Virtual Text 1</label>
                    <input type="text" class="form-control" id="virtual_text_1" name="virtual_text_1"
                        value="{{ old('virtual_text_1') }}">
                </div>

                <div class="form-group">
                    <label for="virtual_count_2">Virtual Count 2</label>
                    <input type="text" class="form-control" id="virtual_count_2" name="virtual_count_2"
                        value="{{ old('virtual_count_2') }}">
                </div>
                
                <div class="form-group">
                    <label for="virtual_text_2">Virtual Text 2</label>
                    <input type="text" class="form-control" id="virtual_text_2" name="virtual_text_2"
                        value="{{ old('virtual_text_2') }}">
                </div>


                <div class="form-group">
                    <label for="virtual_count_3">Virtual Count 3</label>
                    <input type="text" class="form-control" id="virtual_count_3" name="virtual_count_3"
                        value="{{ old('virtual_count_3') }}">
                </div>
                
                <div class="form-group">
                    <label for="virtual_text_3">Virtual Text 3</label>
                    <input type="text" class="form-control" id="virtual_text_3" name="virtual_text_3"
                        value="{{ old('virtual_text_3') }}">
                </div>

                <div class="form-group">
                    <label for="virtual_count_4">Virtual Count 4</label>
                    <input type="text" class="form-control" id="virtual_count_4" name="virtual_count_4"
                        value="{{ old('virtual_count_4') }}">
                </div>

                <div class="form-group">
                    <label for="virtual_text_4">Virtual Text 4</label>
                    <input type="text" class="form-control" id="virtual_text_4" name="virtual_text_4"
                        value="{{ old('virtual_text_4') }}">
                </div>

                <button type="submit" class="btn btn-primary">Add Content</button>
            </form>
            <br>
        </div>
    </div>
</div>
<!-- testimonial and top selling end -->



@endsection



@section('script')



@endsection