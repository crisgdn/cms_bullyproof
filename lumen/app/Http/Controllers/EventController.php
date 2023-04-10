<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Event;





class EventController extends Controller
{

 public function getAllEvents(){

    return response()->json(Event::all());
 }   



public function getOneEvent($id){

   return response()->json(Event::find($id));
}
 
public function createEvent(Request $request){

$this->validate($request,[
   'card'=> 'required',
   'date'=> 'required',
   'name'=> 'required',
   'text'=> 'required',
   'link'=> 'required',
   'live'=> 'required',
   'photo'=> 'required',
]);

   $event = new Event(); 
   
   if($request->hasFile('photo')) {

      $allowedfileExtension=['pdf','jpg','png'];
      $file = $request->file('photo');
      $extenstion = $file->getClientOriginalExtension();
      $check = in_array($extenstion, $allowedfileExtension);
   
      if($check){
          $image = time() . $file->getClientOriginalName();
          $file->move('photos', $image);//photos is the folder inside of public
          $event->photo = $image;
      }
      }
      

      // text data
      $event->card = $request->input('card');
      $event->date = $request->input('date');
      $event->name = $request->input('name');
      $event->text = $request->input('text');
      $event->link = $request->input('link');
      $event->live = $request->input('live');
   
      $event->save();
      return response()->json($event);

}  
 


//////////////////////UPDATE//////////////////////////

public function updateEvent(Request $request,$id){
   $this->validate($request,[
      'card'=> 'required',
      'date'=> 'required',
      'name'=> 'required',
      'text'=> 'required',
      'link'=> 'required',
      'live'=> 'required',
      'photo'=> 'required',
   ]);
   
      $event = Event::find($id); 

      
      if($request->hasFile('photo')) {
   
         $allowedfileExtension=['pdf','jpg','png'];
         $file = $request->file('photo');
         $extenstion = $file->getClientOriginalExtension();
         $check = in_array($extenstion, $allowedfileExtension);
      
         if($check){
             $image = time() . $file->getClientOriginalName();
             $file->move('photos', $image);//photos is the folder inside of public
             $event->photo = $image;
         }
         }
         
   
         // text data
         $event->card = $request->input('card');
         $event->date = $request->input('date');
         $event->name = $request->input('name');
         $event->text = $request->input('text');
         $event->link = $request->input('link');
         $event->live = $request->input('live');
      
         $event->save();
         return response()->json($event);
}




//////////////////////DELETE//////////////////////////

public function deleteEvent($id){
   $event = Event::findOrFail($id)->delete();
   return response()->json('deleted',200);

 } 

}
