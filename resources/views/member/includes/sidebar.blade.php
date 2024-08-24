<!-- [ navigation menu ] start -->
<nav class="pcoded-navbar">
    <div class="nav-list">
        <div class="pcoded-inner-navbar main-menu">
            <div class="pcoded-navigation-label">Navigation</div>
            <ul class="pcoded-item pcoded-left-item">

                <li class="{{ Request::routeIs('member.dashboard') ? 'active' : '' }}">
                    <a href="{{ route('member.dashboard') }}" class="waves-effect waves-dark">
                        <span class="pcoded-micon">
                            <i class="feather icon-home"></i>
                        </span>
                        <span class="pcoded-mtext">Dashboard</span>
                    </a>
                </li>

                <li class="{{ Request::routeIs('member.past-reservation') ? 'active' : '' }}">
                    <a href="{{ route('member.past-reservation') }}" class="waves-effect waves-dark">
                        <span class="pcoded-micon">
                            <i class="fa fa-history"></i>
                        </span>
                        <span class="pcoded-mtext">Past Reservation</span>
                    </a>
                </li>

                
                <li class="{{ Request::routeIs('member.blogs.list') ? 'active' : '' }}">
                    <a href="{{ route('member.blogs.list') }}" class="waves-effect waves-dark">
                        <span class="pcoded-micon">
                            <i class="fa fa-plus"></i>
                        </span>
                        <span class="pcoded-mtext">Comming Soon</span>
                    </a>
                </li>
   
            </ul>
        </div>
    </div>
</nav>
<!-- [ navigation menu ] end -->