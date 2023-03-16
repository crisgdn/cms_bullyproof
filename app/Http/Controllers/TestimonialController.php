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
 
 
 public function createTestimonial($id){

    return response()->json();
 }  


 public function updateTestimonial($id){

    return response()->json();
 }  


 public function deleteTestimonial($id){

    return response()->json();
 } 
}
