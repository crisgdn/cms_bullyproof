<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Email;





class EmailController extends Controller
{

 public function getAllEmails(){

    return response()->json(Email::all());
 }   


//  public function getAllEmail(){

//     return response()->json(Email::join('authors', 'author_id', '=', 'authors.id')->select('books.id','title','published_date','name')->get());
//  }  


 public function getOneEmail($id){

    return response()->json(Email::find($id));
 }
 

 //old create
//  public function createEmail(Request $request){

//    $this->validate($request,[
//      'name'=> 'required',
//      'id' => 'required|integer',
//      'email'=> 'required',
//      'message'=> 'required'
//    ]);
   

//     $email = Email::create($request ->all());
//     return response()->json($email,201);
//   }  

public function createEmail(Request $request){

   $this->validate($request,[
     'name'=> 'required',
     'email'=> 'required',
     'message'=> 'required'
   ]);
   
    $email = new Email();

   //image upload
   // if($request->hasFile('photo')){
   //  $file = $request->file('photo');
   //  $allowedfileExtention = ['pdf', 'png', 'jpg'];
   //  $extention = $file->getClientOriginalExtension();
   //  $check = in_array($extention, $allowedfileExtention);

   //  if($check){
   //    $image = time() . $file->getClientOriginalName();
   //    $file->move('images', $image);
   //    $email->photo = $image;
   //  }
   // }

    //text data
    $email->name = $request ->input('name');
    $email->email = $request ->input('email');
    $email->message = $request ->input('message');

    $email->save();
    return response()->json($email);
    
  }  
 

//old update
//   public function updateEmail(Request $request,$id){
//    $email = Email::findOrFail($id);
//    $email->update($request->all());
//    return response()->json($email,200);
// }



public function updateEmail(Request $request, $id){

   $this->validate($request,[
      'name'=> 'required',
      'email'=> 'required',
      'message'=> 'required'
    ]);

    $email = Email::find($id);

    //text data
    $email->name = $request ->input('name');
    $email->email = $request ->input('email');
    $email->message = $request ->input('message');

    $email->save();
    return response()->json($email);


}





public function deleteEmail($id){
   $email = Email::findOrFail($id);
   $email->delete();
   return response()->json('deleted successfully',200);

 } 

}
