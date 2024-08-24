<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Contact;  
use App\Models\Tag;  
use App\Models\Category;  
use App\Models\Blog ;  
use App\Models\Comment;  

class OtherController extends Controller
{
   /**
     * Display a listing of the resource.
     */

    public function coming_soon(Request $request)
    {

        if(isset($request->search)){
            $blogs = Blog::join("blog_tag" , "blog_tag.blog_id", "blogs.id" )
                    ->join("tags" , "tags.id", "blog_tag.tag_id" )
                    ->join("categories" , "categories.id", "blogs.category_id" )
                    ->where('blogs.title', 'like', '%' . $request->search . '%')
                    ->orWhere('blogs.content', 'like', '%' . $request->search . '%')
                    ->orWhere('tags.name', 'like', '%' . $request->search . '%')
                    ->orWhere('categories.name', 'like', '%' . $request->search . '%')
                    ->select('blogs.*')
                    ->paginate(2);
            dd($blogs);
        }else{
            $blogs = Blog::paginate(2);
        }

        $tags = Tag::all();
        $categories= Category::all();
        
        $data = [
            'title' => 'Coming Soon',
            'blogs' => $blogs,
            'tags'  => $tags,
            'categories' => $categories,
        ];
        return view('front.pages.coming_soon',compact('data'));
    }
    
    public function coming_soon_detail($id)
    {
        $blog = Blog::find($id);
        $tags = Tag::all();
        $categories= Category::all();
        $data = [
            'title'      => 'Coming Soon Detail',
            'blog'       => $blog,
            'tags'       => $tags,
            'categories' => $categories,
        ];
        return view('front.pages.coming_soon_detail',compact('data'));
    }

    public function coming_soon_cat($id)
    {
        $blogs = Blog::where('category_id', $id)->paginate(2);
        $tags = Tag::all();
        $categories= Category::all();
        $data = [
            'title'      => 'Coming Soon',
            'blogs'       => $blogs,
            'tags'       => $tags,
            'categories' => $categories,
        ];
        return view('front.pages.coming_soon',compact('data'));
    }
    
    public function coming_soon_tag($id)
    {
        $blogs = Blog::join("blog_tag" , "blog_tag.blog_id", "blogs.id" )
                ->where('blog_tag.tag_id', $id)->select('blogs.*')->paginate(2);
        $tags = Tag::all();
        $categories= Category::all();
        $data = [
            'title'      => 'Coming Soon',
            'blogs'       => $blogs,
            'tags'       => $tags,
            'categories' => $categories,
        ];
        return view('front.pages.coming_soon',compact('data'));
    }

    public function comment_store(Request $request)
    {
        $request->validate([
            'blog_id' => 'required|exists:blogs,id',
            'author'  => 'required|max:255',
            'comment' => 'required',
            'email'   => 'required|email',
        ]);

        $commentData = new Comment; 
        $commentData->blog_id = $request->blog_id;
        $commentData->author = $request->author ;
        $commentData->email = $request->email ;
        $commentData->comment = $request->comment ;

        $commentData->save();
        return response()->json(['success' => 'Comment added successfully.']);
    }


}

