<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use App\Models\HomepageContent;
use Illuminate\Http\Request;
use Validator;

class AdminHomepageContentController extends Controller
{
    public function index()
    {
        $content = HomepageContent::first();
        $data = [
            'title' => 'HomepageContents',
            'content' => $content  
        ];

        return view('admin.pages.homepage_content.index', compact('data'));
    }
    
    public function create()
    {
        $content = HomepageContent::all();
        $data = [
            'title' => 'HomepageContents Create',
            'content' => $content  
        ];

        return view('admin.pages.homepage_content.create', compact('data'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'spec_of_resort' => 'nullable|string',
            'spec_of_resort_1_img' => 'nullable|image|max:2048',
            'spec_of_resort_1_content' => 'nullable|string',
            'spec_of_resort_2_img' => 'nullable|image|max:2048',
            'spec_of_resort_2_content' => 'nullable|string',
            'spec_of_resort_3_img' => 'nullable|image|max:2048',
            'spec_of_resort_3_content' => 'nullable|string',
            'virtual_link' => 'nullable|string',
            'virtual_img' => 'nullable|image|max:2048',
            'virtual_count_1' => 'nullable|int',
            'virtual_count_2' => 'nullable|int',
            'virtual_count_3' => 'nullable|int',
            'virtual_count_4' => 'nullable|int',
            'virtual_text_1' => 'nullable|string',
            'virtual_text_2' => 'nullable|string',
            'virtual_text_3' => 'nullable|string',
            'virtual_text_4' => 'nullable|string',
        ]);

        $data = $request->except(['spec_of_resort_1_img', 'spec_of_resort_2_img', 'spec_of_resort_3_img']);

        if ($request->hasFile('spec_of_resort_1_img')) {
            $data['spec_of_resort_1_img'] = $request->file('spec_of_resort_1_img')->store('images', 'public');
        }
        if ($request->hasFile('spec_of_resort_2_img')) {
            $data['spec_of_resort_2_img'] = $request->file('spec_of_resort_2_img')->store('images', 'public');
        }
        if ($request->hasFile('spec_of_resort_3_img')) {
            $data['spec_of_resort_3_img'] = $request->file('spec_of_resort_3_img')->store('images', 'public');
        }
        
        if ($request->hasFile('virtual_img')) {
            $data['virtual_img'] = $request->file('virtual_img')->store('images', 'public');
        }

        HomepageContent::create($data);

        return redirect()->route('admin.homepage_content.list')->with('success', 'Content added successfully');
    }
    public function edit($id)
    {
        $content = HomepageContent::find($id);
        $data = [
            'title' => 'HomepageContents Edit',
            'content' => $content  
        ];

        return view('admin.pages.homepage_content.edit', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'spec_of_resort' => 'nullable|string',
            'spec_of_resort_1_img' => 'nullable|image|max:2048',
            'spec_of_resort_1_content' => 'nullable|string',
            'spec_of_resort_2_img' => 'nullable|image|max:2048',
            'spec_of_resort_2_content' => 'nullable|string',
            'spec_of_resort_3_img' => 'nullable|image|max:2048',
            'spec_of_resort_3_content' => 'nullable|string',
            'virtual_link' => 'nullable|string',
            'virtual_img' => 'nullable|image|max:2048',
            'virtual_count_1' => 'nullable|int',
            'virtual_count_2' => 'nullable|int',
            'virtual_count_3' => 'nullable|int',
            'virtual_count_4' => 'nullable|int',
            
            'virtual_text_1' => 'nullable|string',
            'virtual_text_2' => 'nullable|string',
            'virtual_text_3' => 'nullable|string',
            'virtual_text_4' => 'nullable|string',
        ]);

        $content = HomepageContent::find($id);
        $data = $request->except(['spec_of_resort_1_img', 'spec_of_resort_2_img', 'spec_of_resort_3_img']);

        if ($request->hasFile('spec_of_resort_1_img')) {
            $data['spec_of_resort_1_img'] = $request->file('spec_of_resort_1_img')->store('images', 'public');
        }
        if ($request->hasFile('spec_of_resort_2_img')) {
            $data['spec_of_resort_2_img'] = $request->file('spec_of_resort_2_img')->store('images', 'public');
        }
        if ($request->hasFile('spec_of_resort_3_img')) {
            $data['spec_of_resort_3_img'] = $request->file('spec_of_resort_3_img')->store('images', 'public');
        }
        
        if ($request->hasFile('virtual_img')) {
            $data['virtual_img'] = $request->file('virtual_img')->store('images', 'public');
        }

        $content->update($data);

        return redirect()->route('admin.homepage_content.list')->with('success', 'Content updated successfully');
    }

    public function destroy($id)
    {
        $coupon = HomepageContent::find($id);
        $coupon->delete();
        return redirect()->route('admin.homepage_content.list')->with('success', 'Content deleted successfully');
    }



}
