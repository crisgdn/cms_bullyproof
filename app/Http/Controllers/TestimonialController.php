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
 
//  public function createTestimonial(Request $request){

//    $this->validate($request,[
//       'card'=> 'required',
//       'image'=> 'required',
//       'name'=> 'required', 
//       'occupation'=> 'required',
//       'text'=> 'required'
//    ]);

   
//       $testimonial = Testimonial::create($request ->all());
//       return response()->json($testimonial,201);
//    }  

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
    
   // public function updateTestimonial(Request $request,$id){ 

   //    $card = $request->input('card');

   //    $testimonial=Testimonial::findOrFail($id);
   //    $testimonial->update([
   //       'card' => $card, 'name'=> $request->input('name'), 'occupation'=> $request->input('occupation'), 'text'=> $request->input('text')
  
   //    ]);
   //    return response()->json($testimonial, 200);
   // }
   
   public function deleteTestimonial($id){
      $testimonial = Testimonial::findOrFail($id)->delete();
      return response()->json('deleted',200);
   
    } 
 
}
