<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LongTruckParking;


class LongController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

     
    public function index()
    {
        //

        $parkings = LongTruckParking::all();
        
        $data = [
            'title' => 'Long Term Parking',
            'parkings' => $parkings  
        ];
        return view('front.pages.long_term_parking',compact('data'));
    }
    
    public function blog_details()
    {
        //
        $data = [
            'title' => 'Blog Detail',
        ];
        return view('front.pages.blog_details',compact('data'));
    }
    
      
}
