@extends('front.layouts.app')

@section('style')
@endsection


@section('content')


<!--================Banner Area =================-->
<section class="banner_area">
    <div class="container">
        <div class="banner_inner_content">
            <h3>About Us</h3>
            <ul>
                <li class="active"><a href="{{ route('home') }}">Home</a></li>
                <li><a href="{{ route('about-us') }}">About Us</a></li>
            </ul>
        </div>
    </div>
</section>
<!--================End Banner Area =================-->

<!--================Resort Story Area =================-->
<section class="introduction_area resort_story_area">
    <div class="container">
        <div class="row introduction_inner">
            <div class="col-md-5">
                <a href="#" class="introduction_img">
                    <img src="{{ asset('public/assets/img/resort-story-img.jpg') }}" alt="">
                </a>
            </div>
            <div class="col-md-7">
                <div class="introduction_left_text">
                    <div class="resort_title">
                        <h2>TJs Truck Parking <span>story</span></h2>
                        <h5>GIVING THE BEST SERVICE TO DRIVERS</h5>
                    </div> 
                     <p>TJ's Truck Parking was founded by Teaira Johnson, a commercial diver turned entrepreneur, based in Houston, Texas. TJ's Truck Parking specializes in providing tailored parking solutions for truck parking and trailer drops. Catering to the unique needs of truck drivers and logistics companies by offering secure and convenient parking options at competitive rates
                        At TJ's Truck Parking, we pride ourselves on our business ethics and sustainable practices. By providing safe and convenient parking lots for truck drivers and companies, we help ensure the smooth operation of logistics and transportation networks.
                        </p>
                    <a class="about_btn_b" href="{{ route('contact-us') }}">contact us</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Resort Story Area =================-->

<!--================Choose Resot Area =================-->
<section class="choose_resot_area">
    <div class="container">
        <div class="center_title">
            <h2>why choose our <span>resot</span></h2>
            <p>Experience secure parking, top-notch amenities, and exceptional customer service tailored for truck drivers at TJ’s Truck Parking. Your comfort and satisfaction are our priority.</p>
        </div>
        <div class="row choose_resot_inner">
            <div class="col-md-5">
                <div class="resot_list">
                    <ul>
                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>24/7 access</a></li>
                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>electric fence</a></li>
                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i> convenience</a></li>
                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>High customer satisfaction</a></li>
                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>discount coupons </a></li>
                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Good parking & turn around space</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-7">
                <div class="choose_resot_slider owl-carousel">
                    <div class="item">
                        <img src="{{ asset('public/assets/img/resot/resot-1.jpg') }}" alt="">
                    </div>
                    <div class="item">
                        <img src="{{ asset('public/assets/img/resot/resot-1.jpg') }}" alt="">
                    </div>
                    <div class="item">
                        <img src="{{ asset('public/assets/img/resot/resot-1.jpg') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Choose Resot Area =================-->

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

<!--================Video Area =================-->
@php
$homeContent = $data['homeContent'];
$video_link = asset('storage/app/public/'. $homeContent->virtual_img);
@endphp
<section class="video_area" style="background: url('{{ $video_link }}') ; background-size:cover" >
    <div class="container">
        <div class="video_inner">
            <a class="popup-youtube" href="{{ $homeContent->virtual_link }}"><i
                    class="flaticon-play-button"></i></a>
            <h4>virtual Tour</h4>
            <h5>of Hill Town Resort</h5>
        </div>
    </div>
</section>
<!--================End Video Area =================-->

<!--================Fun Fact Area =================-->
<section class="fun_fact_area about_fun_fact">
    <div class="container">
        <div class="row">
            <div class="fun_fact_box row m0">
                <div class="col-md-3 col-sm-6">
                    <div class="media">
                        <div class="media-left">
                            <h3 class="counter">{{ $homeContent->virtual_count_1 }}</h3>
                        </div>
                        <div class="media-body">
                            <h4>{{ $homeContent->virtual_text_1 }}</h4>
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
                            <h4> {{ $homeContent->virtual_text_4 }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Fun Fact Area =================-->

@endsection
 


@section('js') 

@endsection