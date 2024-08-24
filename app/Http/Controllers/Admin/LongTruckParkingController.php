<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\LongTruckParking;
use Illuminate\Http\Request;
use Validator;

class LongTruckParkingController extends Controller
{
    public function index()
    {
        $parkings = LongTruckParking::all();
        $data = [
            'title' => 'Long Truck Parkings',
            'parkings' => $parkings  
        ];

        return view('admin.pages.long_truck_parkings.index', compact('data'));
    }


     public function create()
    {
        $data = [
            'title' => 'Long Truck Parkings',
        ];

        return view('admin.pages.long_truck_parkings.create', compact('data'));
    }



    public function store(Request $request)
    {
        $request->validate([
            'picture' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'number' => 'required|integer',
            'location' => 'required|string',
        ]);

        $data = $request->all();

        if ($request->hasFile('picture')) {
            $imageName = time().'.'.$request->picture->extension();
            $request->picture->move(public_path('images'), $imageName);
            $data['picture'] = $imageName;
        }

        LongTruckParking::create($data);

        return redirect()->route('admin.long_truck_parkings.index')
                         ->with('success', 'Long Truck Parking created successfully.');
    }



     public function update(Request $request, $id)
    {
        $request->validate([
            'picture' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'number' => 'required|integer',
            'location' => 'required|string',
        ]);

        $longTruckParking = LongTruckParking::find($id);
        $data = $request->all();

        if ($request->hasFile('picture')) {
            $imageName = time().'.'.$request->picture->extension();
            $request->picture->move(public_path('images'), $imageName);
            $data['picture'] = $imageName;
        }

        $longTruckParking->update($data);

        return redirect()->route('admin.long_truck_parkings.index')
                         ->with('success', 'Long Truck Parking updated successfully.');
    }

 
    public function edit($id)
    {
        $parking = LongTruckParking::find($id);
        $data = [
            'title' => 'Long Truck Parkings',
            'parking' => $parking  
        ];

        return view('admin.pages.long_truck_parkings.edit', compact('data'));
    }

    public function destroy($id)
    {
        $longTruckParking = LongTruckParking::find($id);
        if ($longTruckParking) {
            $longTruckParking->delete();
            return redirect()->route('admin.long_truck_parkings.index')
                             ->with('success', 'Long Truck Parking deleted successfully.');
        }
        return redirect()->route('admin.long_truck_parkings.index')
                         ->with('error', 'Long Truck Parking not found.');
    }
    
}
