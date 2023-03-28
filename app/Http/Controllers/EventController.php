<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Event;





class EventController extends Controller
{

 public function getAllEvents(){

    return response()->json(Event::all());
 }   


//  public function getAllEvents(){

//     return response()->json(Event::join('authors', 'author_id', '=', 'authors.id')->select('books.id','title','published_date','name')->get());
//  }  



public function getOneEvent($id){

   return response()->json(Event::find($id));
}
 
public function createEvent(Request $request){

$this->validate($request,[
   'name'=> 'required',
//   'id' => 'required|integer',
   'card'=> 'required',
   'date'=> 'required',
   'text'=> 'required'
]);



   $event = Event::create($request ->all());
   return response()->json($event,201);
}  
 
public function updateEvent(Request $request,$id){
   $event = Event::findOrFail($id);
   $event->update($request->all());
   return response()->json($event,200);
}

public function deleteEvent($id){
   $event = Event::findOrFail($id)->delete();
   return response()->json('deleted',200);

 } 

}
