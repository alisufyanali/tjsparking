<!--================Footer Area =================-->
<footer class="footer_area">
    <div class="footer_widget_area">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <aside class="f_widget about_widget">
                        <a href="{{ route('index') }}" style="text-align: center">
                            <img src="{{ asset('public/assets/img/logo.png') }}" width="30%" alt="">
                        </a>
                        <div class="ab_wd_list">
                            <div class="media">
                                <div class="media-left">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <div class="media-body">
                                    <h4>{{ $settings ? $settings->address : '' }}</h4>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-left">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="media-body">
                                    <h4>+ {{ $settings ? $settings->contact_no : '' }}</h4>
                                </div>
                            </div>
                        </div>
                        <div class="book_now_area">
                            <a class="book_now_btn" href="{{ route('locations') }}">Book now</a>
                        </div>
                    </aside>
                </div>
                <div class="col-md-3 col-xs-6">
                    <aside class="f_widget link_widget">
                        <div class="f_title">
                            <h3>Extra Links</h3>
                        </div>
                        <ul>
                            <li><a href="{{ url('/about-us') }}">- About Us</a></li>
                            <!--<li><a href="{{ route('index') }}">- Faq’s</a></li>-->
                            <li><a href="{{ route('coming-soon') }}">- Blog</a></li>
                            <!--<li><a href="{{ route('index') }}">- Testimonials</a></li>-->
                            <li><a href="{{ route('locations') }}">- Reserve Now</a></li>
                        </ul>
                    </aside>
                </div>
                <div class="col-md-3 col-xs-6">
                    <aside class="f_widget link_widget">
                        <div class="f_title">
                            <h3>our services</h3>
                        </div>
                        <ul>
                            <li><a href="{{ route('locations') }}">- Locations</a></li>
                            <li><a href="{{ route('long-term-parking') }}">- long term parking</a></li>
                        </ul>
                    </aside>
                </div>
                <div class="col-md-3 col-xs-6">
                    <aside class="f_widget link_widget">
                        <div class="f_title">
                            <h3>Social</h3>
                        </div>
                        <ul class="header_social">
                            <li><a href="https://www.facebook.com/TJsParkingStorage/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>

                    </aside>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_copyright_area">
        <div class="container">
            <div class="pull-left">
                <h4>Copyright © Truck Parking And Storage <script>
                    document.write(new Date().getFullYear());
                    </script>. All rights reserved. </h4>
            </div>
            <div class="pull-right">
                <h4>Created by: <a href="#">DesignArc</a></h4>
            </div>
        </div>
    </div>
</footer>
<!--================End Footer Area =================-->

<!--================Search Box Area =================-->
<div class="search_area zoom-anim-dialog mfp-hide" id="test-search">
    <div class="search_box_inner">
        <h3>Search</h3>
        <form method="GET" action="{{ route('locations') }}">
            <div class="input-group">
                <input type="text" required name="search" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="icon icon-Search"></i></button>
                </span>
            </div>
        </form>
    </div>
</div>
<!--================End Search Box Area =================-->