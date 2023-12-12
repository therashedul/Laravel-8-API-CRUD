<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\SessionModel;

class SessionController extends Controller
{
   public function index(Request $request){

    // $session = SessionModel::all();
    // print_r($session);

        return $request->session()->all();
    //    if($request->session()->has("key")){
    //     }else{
    //         return "Session has no value";
    //     }    

   }   

   public function store(Request $request){
        $session = SessionModel::all();
        $userId = $session[0]->user_id;
        $iP = $session[0]->ip_address;
        $request->session()->put("id", $userId);
        $request->session()->put("ip", $iP);

        $request->session()->put("key", ['Rasel karim']);
        $request->session()->put("age", ['12','11','13']);
        

        return $request->session()->flash('status', 'Task was successful!');;
   }  
    public function distroy(Request $request){
        // $request->session()->forget('age'); // only age value delete other value stay
        $request->session()->flush(); // session all value delete
        return "Session deleted";    
   }
}
