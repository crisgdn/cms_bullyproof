<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Testimonial;





class TestimonialController extends Controller
{

 public function getAllTestimonials(){

    return response()->json(Testimonial::all());
 }   

//////////////////////GET ONE//////////////////////////

 public function getOneTestimonial($id){

    return response()->json(Testimonial::find($id));
 }
 



//////////////////////CREATE//////////////////////////

public function createTestimonial(Request $request){

   $this->validate($request,[
      'card'=> 'required',
      'image'=> 'required',
      'name'=> 'required', 
      'occupation'=> 'required',
      'text'=> 'required'
   ]);


$testimonial = new Testimonial(); 

// image upload
if($request->hasFile('image')) {

   $allowedfileExtension=['pdf','jpg','png'];
   $file = $request->file('image');
   $extenstion = $file->getClientOriginalExtension();
   $check = in_array($extenstion, $allowedfileExtension);

   if($check){
       $image = time() . $file->getClientOriginalName();
       $file->move('images', $image);//images is the folder inside of public
       $testimonial->image = $image;
   }
   }

   // text data
   $testimonial->card = $request->input('card');
   $testimonial->name = $request->input('name');
   $testimonial->occupation = $request->input('occupation');
   $testimonial->text = $request->input('text');

   $testimonial->save();
   return response()->json($testimonial);

   } 


//////////////////////UPDATE//////////////////////////
   
   public function updateTestimonial(Request $request, $id){

      $this->validate($request,[
         'card'=> 'required',
         'image'=> 'required',
         'name'=> 'required', 
         'occupation'=> 'required',
         'text'=> 'required'
      ]);
   
      $testimonial = Testimonial::find($id);
 
   
   // image upload
   if($request->hasFile('image')) {
   
      $allowedfileExtension=['pdf','jpg','png'];
      $file = $request->file('image');
      $extenstion = $file->getClientOriginalExtension();
      $check = in_array($extenstion, $allowedfileExtension);
   
      if($check){
          $image = time() . $file->getClientOriginalName();
          $file->move('images', $image);//images is the folder inside of public
          $testimonial->image = $image;
      }
      }
   
      // text data
      $testimonial->card = $request->input('card');
      $testimonial->name = $request->input('name');
      $testimonial->occupation = $request->input('occupation');
      $testimonial->text = $request->input('text');
   
      $testimonial->save();
      return response()->json($testimonial);
   
      } 




//////////////////////DELETE//////////////////////////


   
   public function deleteTestimonial($id){
      $testimonial = Testimonial::findOrFail($id)->delete();
      return response()->json('deleted',200);
   
    } 
 
}
