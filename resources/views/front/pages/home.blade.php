@extends('front.layouts.app')

@section('style')
<style>
.error {
    color: red;
}
</style>
@endsection


@section('content')

<!--================Slider Area =================-->
<section class="main_slider_area">
    <div id="main_slider3" class="rev_slider" data-version="5.3.1.6">
        <ul>

            @if($settings && $settings->sliders)
            @foreach(explode(',', $settings->sliders) as $slider)
            <li data-index="rs-1587" data-transition="fade" data-slotamount="default" data-hideafterloop="0"
                data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                data-thumb="{{ asset($slider) }}" data-rotate="0" data-saveperformance="off"
                data-title="Creative" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5=""
                data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                <!-- MAIN IMAGE -->
                <img src="{{ asset($slider) }}" alt="" data-bgposition="center center" data-bgfit="cover"
                    data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>
            </li>

            @endforeach
            @else

            <li data-index="rs-1587" data-transition="fade" data-slotamount="default" data-hideafterloop="0"
                data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                data-thumb="{{ asset('public/assets/img/home-slider/slider-5.jpg') }}" data-rotate="0"
                data-saveperformance="off" data-title="Creative" data-param1="01" data-param2="" data-param3=""
                data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9=""
                data-param10="" data-description="">
                <!-- MAIN IMAGE -->
                <img src="{{ asset('public/assets/img/home-slider/slider-5.jpg') }}" alt=""
                    data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5"
                    class="rev-slidebg" data-no-retina>
            </li>
            <li data-index="rs-1588" data-transition="fade" data-slotamount="default" data-hideafterloop="0"
                data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                data-thumb="{{ asset('public/assets/img/home-slider/slider-6.jpg') }}" data-rotate="0"
                data-saveperformance="off" data-title="Creative" data-param1="01" data-param2="" data-param3=""
                data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9=""
                data-param10="" data-description="">
                <!-- MAIN IMAGE -->
                <img src="{{ asset('public/assets/img/home-slider/slider-6.jpg') }}" alt=""
                    data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5"
                    class="rev-slidebg" data-no-retina>
            </li>
            <li data-index="rs-1589" data-transition="fade" data-slotamount="default" data-hideafterloop="0"
                data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300"
                data-thumb="{{ asset('public/assets/img/home-slider/slider-7.jpg') }}" data-rotate="0"
                data-saveperformance="off" data-title="Creative" data-param1="01" data-param2="" data-param3=""
                data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9=""
                data-param10="" data-description="">
                <!-- MAIN IMAGE -->
                <img src="{{ asset('public/assets/img/home-slider/slider-7.jpg') }}" alt=""
                    data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5"
                    class="rev-slidebg" data-no-retina>
                <!-- LAYER NR. 1 -->
            </li>
            @endif


        </ul>
    </div>
    <div class="book_room_area">
        <div class="container">
            <div class="book_room_box">
                <div class="book_table_item">
                    <h3>Reserve Spot</h3>
                </div>
                <form action="{{ route('check.availability') }}" method="GET">
                    @csrf
                    <div class="conatiner">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="book_table_item">
                                    <div class="input-append date ">
                                        <label for="date_in" style="color:white">Date In</label>
                                        <input size="16" type="date" name="date_in" id="date_in" value="" required
                                            placeholder="Date in">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="book_table_item">
                                    <div class="input-append date">
                                        <label for="date_out" style="color:white">Date Out</label>
                                        <input size="16" type="date" id="date_out" name="date_out" value="" required
                                            placeholder="Date Out">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="conatiner">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="book_table_item">
                                    <label for="oversized" style="color:white">Oversized</label>
                                    <select class="selectpicker" name="oversized" id="oversized">
                                        <option value="" selected disabled>Oversized</option>
                                        <option value="no">No</option>
                                        <option value="yes">Yes</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="book_table_item">
                                    <div class="input-append">
                                        <label for="truck_no" style="color:white">Truck #</label>
                                        <input size="16" type="name" name="truck_no" id="truck_no" value=""
                                            placeholder="####">

                                        <!-- <label for="price" style="color:white">Price</label>
                                        <input size="16" type="number" name="price" id="price" value=""
                                            placeholder="Price"> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="book_table_item" style="margin-top:10px">
                        <div class="input-append">
                            <label for="number_of_spaces" style="color:white">Number of spaces</label>
                            <input size="16" type="number" id="number_of_spaces" name="number_of_spaces" value=""
                                required placeholder="Number of spaces">
                        </div>
                    </div>

                    <div class="book_table_item">
                        <button type="submit" id="checkAvailability" class="book_now_btn_black">Check
                            Availability</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</section>
<!--================End Slider Area =================-->

@php
$homeContent = $data['homeContent'];
@endphp

<!--================Specification Resort Area =================-->
<section class="spec_resort_area">
    <div class="container">
        <div class="main_big_title">
            <h2>Specification  <span>of Parking</span></h2>
            <p> {{ $homeContent->spec_of_resort }} </p>
        </div>
        <div class="row spec_resort_inner">
            <div class="col-md-4 col-sm-6">
                <div class="spec_resort_item">
                    <a class="resort_img" href="#"><img
                            src="{{ asset('storage/app/public/' . $homeContent->spec_of_resort_1_img) }}" alt=""></a>
                    <h4> {{ $homeContent->spec_of_resort_1_content }} </h4>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="spec_resort_item">
                    <a class="resort_img" href="#"><img
                            src="{{ asset('storage/app/public/' . $homeContent->spec_of_resort_2_img) }}" alt=""></a>
                    <h4>{{ $homeContent->spec_of_resort_2_content }} </h4>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="spec_resort_item">
                    <a class="resort_img" href="#"><img
                            src="{{ asset('storage/app/public/' . $homeContent->spec_of_resort_3_img) }}" alt=""></a>
                    <h4>{{ $homeContent->spec_of_resort_3_content }} </h4>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Specification Resort Area =================-->

<!--================Explor Location Area =================-->
<section class="explor_room_area">
    <div class="container">
        <div class="explor_title row m0">
            <div class="pull-left">
                <div class="left_ex_title">
                    <h2>Explor Our <span>Parking</span></h2>
                    <p>choose Parking according to Location</p>
                </div>
            </div>
            <div class="pull-right">
                <a class="about_btn_b" href="{{ route('locations') }}">view all Parkings</a>
            </div>
        </div>
        <div class="row explor_room_item_inner">
            @if(isset($data['locations']) && count($data['locations']) > 0 )
            @foreach($data['locations'] as $location )
            <div class="col-md-4 col-sm-6">
                <div class="explor_item">
                    <a href="{{ route('location-detail' , $location['slug'] ) }}" class="room_image">
                        <img src="{{ asset('public/assets/img/location/' . $location['featured_image'] ) }}" alt="">
                    </a>
                    <div class="explor_text">
                        <a href="{{ route('location-detail' , $location['slug'] ) }}">
                            <h4>{{ $location['location_name']}}</h4>
                        </a>
                        <br>
                        <!-- <ul>
                            <li><a href="#">100x150</a></li>
                            <li><a href="#">Area</a></li>
                            <li><a href="#">2 Balcony</a></li>
                        </ul> -->
                        <div class="explor_footer">
                            <a class="book_now_btn" href="{{ route('location-detail' , $location['slug'] ) }}">View
                                details</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            @endif

        </div>
    </div>
</section>
<!--================End Explor Location Area =================-->

<!--================Video Area =================-->
@php
$video_link = asset('storage/app/public/'. $homeContent->virtual_img);
@endphp
<section class="video_area" style="background: url('{{ $video_link }}') ; background-size:cover" >
    <div class="container">
        <div class="video_inner">
            <a class="popup-youtube" href="{{ $homeContent->virtual_link }}"><i class="flaticon-play-button"></i></a>
            <h4>virtual Tour</h4>
            <h5>Truck Parking And Storage</h5>
        </div>
    </div>
</section>
<!--================End Video Area =================-->

<!--================Fun Fact Area =================-->
<section class="fun_fact_area yellow_fun_fact">
    <div class="container">
        <div class="row">
            <div class="fun_fact_box row m0">
                <div class="col-md-3 col-sm-6">
                    <div class="media">
                        <div class="media-left">
                            <h3 class="counter">{{ $homeContent->virtual_count_1 }}</h3>
                        </div>
                        <div class="media-body">
                            <h4> {{ $homeContent->virtual_text_1 }} </h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="media">
                        <div class="media-left">
                            <h3 class="counter">{{ $homeContent->virtual_count_2 }}</h3>
                        </div>
                        <div class="media-body">
                            <h4>{{ $homeContent->virtual_text_2 }}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="media">
                        <div class="media-left">
                            <h3 class="counter">{{ $homeContent->virtual_count_3 }}</h3>
                        </div>
                        <div class="media-body">
                            <h4>{{ $homeContent->virtual_text_3 }}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="media">
                        <div class="media-left">
                            <h3 class="counter">{{ $homeContent->virtual_count_4 }}</h3>
                        </div>
                        <div class="media-body">
                            <h4>{{ $homeContent->virtual_text_4 }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Fun Fact Area =================-->

<!--================Client Testimonial Area =================-->
<section class="client_area client_three">
    <div class="container">
        <div class="clients_slider owl-carousel">


            @if(isset($data['HomeTestimonial']) && count($data['HomeTestimonial']) > 0 )
            @foreach($data['HomeTestimonial'] as $testimonial)
            <div class="item">
                <div class="media">
                    <div class="media-left">
                        <img src="{{ asset('storage/app/public/' . $testimonial->image) }}"
                            alt="{{ $testimonial->name }}">
                    </div>
                    <div class="media-body">
                        <p><i>“</i> {{ $testimonial->comment }} </p>
                        <a href="#">
                            <h4>- {{ $testimonial->name }}</h4>
                        </a>
                        <h5>{{ $testimonial->postion }}</h5>
                    </div>
                </div>
            </div>

            @endforeach
            @endif

        </div>
    </div>
</section>
<!--================End Client Testimonial Area =================-->


<!--================Get Contact Area =================-->
<section class="get_contact_area">
    <div class="container">
        <div class="row get_contact_inner">
            <div class="col-md-6">
                <div class="left_ex_title">
                    <h2>get in <span>touch</span></h2>
                </div>
                <form class="contact_us_form row m0" id="contactForm" method="POST"
                    action="{{ route('contact-store') }}">
                    @csrf
                    <div class="form-group col-md-12">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
                    </div>
                    <div class="form-group col-md-12">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                    </div>
                    <div class="form-group col-md-12">
                        <input type="text" class="form-control" id="number" name="number" placeholder="Phone no."
                            required>
                    </div>
                    <div class="form-group col-md-12">
                        <textarea class="form-control" name="message" id="message" rows="1" placeholder="Message"
                            required></textarea>
                    </div>
                    <div class="form-group col-md-12">
                        <button type="submit" value="submit" class="btn submit_btn form-control">submit now</button>
                    </div>
                </form>
            </div>
            <div class="col-md-6">
                <div class="right_contact_info">
                    <div class="contact_info_title">
                        <h3>Contact info</h3>
                        <p>If you have and inquiries please contact at us using one of the methods below.</p>
                    </div>
                    <div class="contact_info_list">
                        <div class="media">
                            <div class="media-left">
                                <i class="fa fa-map-marker"></i>
                            </div>
                            <div class="media-body">
                                <h4>Office</h4>
                                <p>{{ $settings ? $settings->address : '' }}</p>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <i class="fa fa-envelope-o"></i>
                            </div>
                            <div class="media-body">
                                <h4>Email</h4>
                                <a href="#">{{ $settings ? $settings->email : '' }}</a>
                            </div>
                        </div>
                        <div class="media">
                            <div class="media-left">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="media-body">
                                <h4>Phone</h4>
                                <a href="#">{{ $settings ? $settings->contact_no : '' }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Get Contact Area =================-->

<!--================Our Resort Gallery Area =================-->
<div class="resort_gallery_inner resort_g_full">
    <div class="resort_full_gallery owl-carousel imageGallery1">
        <div class="item">
            <img src="{{ asset('public/assets/img/gallery/resort-g-1.jpg') }}" alt="">
            <div class="resort_g_hover">
                <div class="resort_hover_inner">
                    <a class="light" href="{{ asset('public/assets/img/gallery/gallery-big/img-1.jpg') }}"><i
                            class="fa fa-expand" aria-hidden="true"></i></a>
                    <h5>Our Location</h5>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="{{ asset('public/assets/img/gallery/resort-g-2.jpg') }}" alt="">
            <div class="resort_g_hover">
                <div class="resort_hover_inner">
                    <a class="light" href="{{ asset('public/assets/img/gallery/gallery-big/img-2.jpg') }}"><i
                            class="fa fa-expand" aria-hidden="true"></i></a>
                    <h5>Our Location</h5>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="{{ asset('public/assets/img/gallery/resort-g-3.jpg') }}" alt="">
            <div class="resort_g_hover">
                <div class="resort_hover_inner">
                    <a class="light" href="{{ asset('public/assets/img/gallery/gallery-big/img-3.jpg') }}"><i
                            class="fa fa-expand" aria-hidden="true"></i></a>
                    <h5>Our Location</h5>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="{{ asset('public/assets/img/gallery/resort-g-4.jpg') }}" alt="">
            <div class="resort_g_hover">
                <div class="resort_hover_inner">
                    <a class="light" href="{{ asset('public/assets/img/gallery/gallery-big/img-4.jpg') }}"><i
                            class="fa fa-expand" aria-hidden="true"></i></a>
                    <h5>Our Location</h5>
                </div>
            </div>
        </div>
    </div>
</div>
<!--================End Our Resort Gallery Area =================-->


@endsection



@section('modal')
<!--================Contact Success and Error message Area =================-->
<div id="reservation-success" class="modal modal-message fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <span class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></span>
                <h2 class="modal-title">Thank you</h2>
                <p class="modal-subtitle">Thank you for your reservation request. A member of the Truck Parking team
                    will contact you within the next business day to confirm details and answer any questions you
                    have....</p>
            </div>
        </div>
    </div>
</div>



<!--================Contact Success and Error message Area =================-->
<div id="success" class="modal modal-message fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <span class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></span>
                <h2 class="modal-title">Thank you</h2>
                <p class="modal-subtitle">Your message is successfully sent...</p>
            </div>
        </div>
    </div>
</div>




<!-- Modals error -->

<div id="error" class="modal modal-message fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <span class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></span>
                <h2 class="modal-title">Sorry !</h2>
                <p class="modal-subtitle"> Something went wrong </p>
            </div>
        </div>
    </div>
</div>
<!--================End Contact Success and Error message Area =================-->

@endsection
@section('js')

<script src="{{ asset('public/assets/js/jquery.form.js') }}"></script>
<script src="{{ asset('public/assets/js/jquery.validate.min.js') }}"></script>
<script src="{{ asset('public/assets/js/contact.js') }}"></script>


<script>
// public/js/reservation.js
$(document).ready(function() {
    // $('#checkAvailability').click(function(e) {
    //     e.preventDefault();
    //     var formData = $('#reservationForm').serialize();
    //     $("input").removeAttr("style");
    //     $(".book_room_box .book_table_item .bootstrap-select .dropdown-toggle").removeAttr("style");
    //     $.ajax({
    //         url: '{{ route("check.availability") }}', // Route to Laravel controller
    //         type: 'GET',
    //         data: formData,
    //         success: function(response) {
    //             $('#reservationForm')[0]
    //                 .reset(); // Reset the form after successful submission
    //             $('#reservation-success').modal('show');
    //         },
    //         error: function(xhr) {
    //             errors = xhr.responseJSON.errors;
    //             jQuery.each(errors, function(index, item) {
    //                 $("input[name=" + index + "]").css('border', '1px solid red');

    //                 if (index == 'oversized') {
    //                     $(".book_room_box .book_table_item .bootstrap-select .dropdown-toggle")
    //                         .css('border', '1px solid red');
    //                 }
    //             });
    //         }
    //     });
    // });
});
</script>

@endsection