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
 
 
 public function createEmail($id){

    return response()->json();
 }  


 public function updateEmail($id){

    return response()->json();
 }  


 public function deleteEmail($id){

    return response()->json();
 } 
}
