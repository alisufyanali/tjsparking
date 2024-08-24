<!--================Header Area =================-->
<header class="main_header_area">
    <div class="header_top">
        <div class="container">
            <div class="header_top_inner">
                <div class="pull-left">
                    <a href="#"><i class="fa fa-phone"></i>+ {{ $settings ? $settings->contact_no : '' }}</a>
                    <a href="#"><i class="fa fa-envelope-o"></i>{{ $settings ? $settings->email  : 'info@truckparkingandstorage.com' }}</a>
                </div>
                <div class="pull-right">
                    <ul class="header_social">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="header_menu">
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="{{ route('home') }}">
                        <img src="{{ $settings ? asset($settings->logo) : asset('public/assets/img/logo.png') }}" alt="Logo">
                        <img src="{{ asset('public/assets/img/logo-sticky.png') }}" alt="">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        
                        <li class="{{ (Request::routeIs('home') || Request::routeIs('index') || Request::routeIs('index2') ) ? 'active' : '' }}">
                            <a href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="{{ Request::routeIs('locations') ? 'active' : '' }}">
                            <a href="{{ route('locations') }}">Locations</a>
                        </li>
                        <li class="{{ Request::routeIs('long-term-parking') ? 'active' : '' }}">
                            <a href="{{ route('long-term-parking') }}">long term parking</a>
                        </li>
                        <li class="{{ Request::routeIs('about-us') ? 'active' : '' }}">
                            <a href="{{ route('about-us') }}">About Us</a>
                        </li>
                        <li class="{{ Request::routeIs('contact-us') ? 'active' : '' }}">
                            <a href="{{ route('contact-us') }}">Contact Us</a>
                        </li>
 
                        <li class="{{ Request::routeIs('coming-soon') ? 'active' : '' }}">
                            <a href="{{ route('coming-soon') }}">Updates</a></li>

                        @auth
                        <li>
                        @if (Auth::user()->user_type == 'admin')
                            <a href="{{ route('admin.dashboard') }}">Admin Portal</a>
                        @elseif(Auth::user()->user_type == 'member')
                            <a href="{{ route('member.dashboard') }}">Member Portal</a>
                        @elseif(Auth::user()->user_type == 'emp')
                            <a href="{{ route('employee.dashboard') }}">Employee Portal</a>
                        @endif
                        </li>

                        @else
                        <li class="submenu dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                aria-haspopup="true" aria-expanded="false">Member Portal <i class="fa fa-chevron-down"
                                    aria-hidden="true"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="{{ route('register') }}">Register</a></li>
                                <li><a href="{{ url('/login') }}">Login</a></li>
                            </ul>
                        </li>
                        @endauth


                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="search_dropdown">
                            <a class="popup-with-zoom-anim" href="#test-search"><i class="icon icon-Search"></i></a>
                        </li>
                        <li class="book_btn">
                            <a class="book_now_btn" href="{{ route('locations') }}">Book now</a>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
</header>
<!--================Header Area =================-->