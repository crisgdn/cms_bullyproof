<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Register;





class RegisterController extends Controller
{

 public function getAllRegisters(){

    return response()->json(Register::all());
 }   


//  public function getAllRegisters(){

//     return response()->json(Register::join('authors', 'author_id', '=', 'authors.id')->select('books.id','title','published_date','name')->get());
//  }  



 public function getOneRegister($id){

    return response()->json(Register::find($id));
 }
 
 
 public function createRegister($id){

    return response()->json();
 }  


 public function updateRegister($id){

    return response()->json();
 }  


 public function deleteRegister($id){

    return response()->json();
 } 
}
