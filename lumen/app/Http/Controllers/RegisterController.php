<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Register;





class RegisterController extends Controller
{

 public function getAllRegisters(){

    return response()->json(Register::all());
 }   



 public function getOneRegister($id){

    return response()->json(Register::find($id));
 }
 
 public function createRegister(Request $request){

   $this->validate($request,[
      'name'=> 'required',
      'email'=> 'required',
      'event'=> 'required',
      'comments'=> 'required'
   ]);
   
   
      $register = Register::create($request ->all());
      return response()->json($register,201);
   }  
    



   public function updateRegister(Request $request, $id){
      $register = Register::findOrFail($id);
      $register->update($request->all());
      return response()->json($register,200);
   }

   
   public function deleteRegister($id){
      $register = Register::findOrFail($id)->delete();
      return response()->json('deleted',200);
   
    } 
 
}
