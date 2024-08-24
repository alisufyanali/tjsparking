<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Location;
use App\Models\Reservation;
use App\Models\HomepageContent;
use App\Models\HomepageTestimonial;
use Carbon\Carbon;
use Session;

class HomeController extends Controller  
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $locations = Location::where('featured' , 1)->limit(3)->get();
        $homeContent = HomepageContent::first();
        $HomeTestimonial = HomepageTestimonial::all();
        $data = [
            'title' => 'Home',
            'locations' => $locations,
            'homeContent' => $homeContent,
            'HomeTestimonial' => $HomeTestimonial,
        ];
        return view('front.pages.home',compact('data'));
    }


    public function contact()
    {
        //
        $data = [
            'title' => 'Contact Us',
        ];
        return view('front.pages.contact',compact('data'));
    }
    
    
    public function about()
    {
        //
        
        $homeContent = HomepageContent::first();
        $HomeTestimonial = HomepageTestimonial::all();
        $data = [
            'title' => 'About Us',
            'homeContent' =>    $homeContent,
            'HomeTestimonial' => $HomeTestimonial,
        ];
        return view('front.pages.about',compact('data'));
    }
    
    
 

  




    public function logouts () {
        //logout user
        auth()->logout();
        // redirect to homepage
        return redirect('/');
    }
}
