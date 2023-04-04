<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Testimonial;





class TestimonialController extends Controller
{

 public function getAllTestimonials(){

    return response()->json(Testimonial::all());
 }   


//  public function getAllTestimonials(){

//     return response()->json(Testimonial::join('authors', 'author_id', '=', 'authors.id')->select('books.id','title','published_date','name')->get());
//  }  



 public function getOneTestimonial($id){

    return response()->json(Testimonial::find($id));
 }
 
 public function createTestimonial(Request $request){

   $this->validate($request,[
      'card'=> 'required',
      'id' => 'required|integer',
      'name'=> 'required', //'email'=> 'required|email',
      'occupation'=> 'required',
      'image'=> 'required',
      'text'=> 'required'
   ]);
   
   
      $testimonial = Testimonial::create($request ->all());
      return response()->json($testimonial,201);
   }  
    
   public function updateTestimonial(Request $request,$id){
      $testimonial = Testimonial::findOrFail($id);
      $testimonial->update($request->all());
      return response()->json($testimonial,200);
   }
   
   public function deleteTestimonial($id){
      $testimonial = Testimonial::findOrFail($id)->delete();
      return response()->json('deleted',200);
   
    } 
 
}
