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
 
 public function createEmail(Request $request){

   $this->validate($request,[
     'name'=> 'required',
   //   'id' => 'required|integer',
     'email'=> 'required|email',
     'message'=> 'required'
   ]);
   

    $email = Email::create($request ->all());
    return response()->json($email,201);
  }  
 
  public function updateEmail(Request $request,$id){
   $email = Email::findOrFail($id);
   $email->update($request->all());
   return response()->json($email,200);
}

public function deleteEmail($id){
   $email = Email::findOrFail($id)->delete();
   return response()->json('deleted',200);

 } 

}
