@extends('front.layouts.app')

@section('style')
@endsection


@section('content')


<!--================Banner Area =================-->
<section class="banner_area">
    <div class="container">
        <div class="banner_inner_content">
            <h3>Long Term Parking</h3>
            <ul>
                <li class="active"><a href="{{ route('index')}}">Home</a></li>
                <li><a href="#">Long Term Parking</a></li>
            </ul>
        </div>
    </div>
</section>
<!--================End Banner Area =================-->
<!--================Bolg Area =================-->
<section class="main_blog_area">
    <div class="container">
        <div class="row main_blog_inner">
             @if(isset($data['parkings']))
                        @foreach ($data['parkings'] as $parking)
            <div class="col-sm-6">
                <div class="blog_item">
                    <a href="#" class="blog_img">
                        <img src="{{ asset('public/images/' . $parking->picture) }}" alt="">
                    </a>
                    <div class="blog_text">
                        <a href="#">
                            <h4> {{ $parking->title }}     </h4>
                        </a>
                        <ul>
                            <li><a href="#"><span>Location :</span>  {{ $parking->location }}     </a></li>
                            <li><a href="#">Number:  {{ $parking->number }}     </a></li>
                        </ul>
                        <p> {{ $parking->description }}     </p>
                    </div>
                </div>
            </div> 
        
                        @endforeach
                @endif
        </div>
    </div>
</section>
<!--================End Bolg Area =================-->

@endsection



@section('js')

@endsection