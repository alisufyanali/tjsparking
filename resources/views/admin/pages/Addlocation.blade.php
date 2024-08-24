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

            <a href="{{ route('admin.location.list') }}" class="btn btn-primary waves-effect"> Back</a>

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

            <form id="locationForm">
                @csrf
                <input type="hidden" id="location_id">
                <div class="form-group">
                    <label for="location_name">Location Name:</label>
                    <input type="text" name="location_name" class="form-control" id="location_name">
                </div>
                <!-- <div class="form-group">
                    <label for="per_night_charges">Per Night Charges:</label>
                    <input type="text" name="per_night_charges" class="form-control" id="per_night_charges">
                </div> -->
 
                <div class="form-group oversized_price_div">
                    <label for="oversized_price">OverSized Price:</label>
                    <input type="number" name="oversized_price" class="form-control" id="oversized_price">
                </div>

                <div class="form-group">
                    <label for="total_spaces">Total Spaces:</label>
                    <input type="text" name="total_spaces" class="form-control" id="total_spaces">
                </div>
                <div class="form-group">
                    <label for="description">Description:</label>
                    <textarea class="form-control" name="description" id="description"></textarea>
                </div>
                <div class="form-group">
                    <label for="location_images">Location Images:</label>
                    <input type="file" name="location_images[]" multiple class="form-control" id="location_images">
                    <div class="location_images_div">
                    </div>
                </div>
                <div class="form-group">
                    <label for="featured_image">Featured Image:</label>
                    <!-- <div class="dropzone" id="featuredImageDropzone"></div> -->
                    <input type="file" name="featured_image" class="form-control" id="featured_image">
                    <img src="" id="featured_image_src" alt="" width="60px">
                </div>
                <div class="form-group">
                    <label for="location_services">Location Services:</label>
                    <div class="tags_max">
                        <input class="" name="location_services" id="location_services" type="text"
                            value="Electric fence , Bright lighting at night ,  Security images , 24/7 access "
                            data-role="tagsinput">
                    </div>
                    <br>
                </div>

                <div class="border-checkbox-group border-checkbox-group-primary">
                    <input class="border-checkbox" type="checkbox" id="featured" name="featured">
                    <label class="form-label border-checkbox-label" for="featured">Featured Location:</label>
                </div>

                <br>
                <h3>Pricing</h3>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="daily">Daily Pricng:</label>
                            <input type="text" name="daily" class="form-control" id="daily">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="weekly">Weekly Pricng:</label>
                            <input type="text" name="weekly" class="form-control" id="weekly">
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="monthly">Monthly Pricng:</label>
                            <input type="text" name="monthly" class="form-control" id="monthly">
                        </div>
                    </div>

                </div>




                <button type="button" class="btn btn-primary" id="saveBtn">Save</button>
            </form>
            <br>
        </div>
    </div>
</div>
<!-- testimonial and top selling end -->



@endsection



@section('script')

<!-- Switch component js -->
<script type="text/javascript" src="{{ asset('public/admin/bower_components/switchery/js/switchery.min.js') }}">
</script>

<!-- Tags js -->
<script type="text/javascript"
    src="{{ asset('public/admin/bower_components/bootstrap-tagsinput/js/bootstrap-tagsinput.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.10.4/typeahead.bundle.min.js"></script>

<script type="text/javascript" src="{{ asset('public/admin/assets/pages/advance-elements/swithces.js') }}"></script>




<script>
$(document).ready(function() {
 

    $(document).on('click', '#saveBtn', function() {
        var formData = new FormData($('#locationForm')[0]);
        var location_id = $('#location_id').val();
        var ajaxUrl = location_id ? 'update/' + location_id : 'store';
        var ajaxMethod = location_id ? 'POST' : 'POST';
        if (location_id) formData.append('_method', 'PUT');
        $('.error').remove();
        $.ajax({
            url: ajaxUrl,
            method: ajaxMethod,
            data: formData,
            processData: false,
            contentType: false,
            headers: {
                'X-CSRF-TOKEN': $('input[name="_token"]').val()
            },
            success: function(response) {
                if (response.status == 'danger') {
                    alert(response.message)
                } else {
                    location.reload();
                }
            },
            error: function(response) {
                errors = response.responseJSON.errors;
                jQuery.each(errors, function(index, item) {
                    $("#" + index).after('<span class="error" >' + item +
                        ' </span>')
                });
            }
        });
    });

});
</script>

@endsection