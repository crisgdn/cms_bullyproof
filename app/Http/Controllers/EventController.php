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
 
 
 public function createEvent($id){

    return response()->json();
 }  


 public function updateEvent($id){

    return response()->json();
 }  


 public function deleteEvent($id){

    return response()->json();
 } 
}
