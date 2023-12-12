<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Http;

class GetApiController extends Controller
{
    public function getapi(){ 
        $apiValue = Http::get('https://jsonplaceholder.typicode.com/posts');
        return $apiValue->json();
    }

    public function singlepostapi($id){
        $singleValue = Http::get('https://jsonplaceholder.typicode.com/posts/'. $id);
        return $singleValue->json();
    }

    public function addpotapi(){
        $addpost = Http::post('https://jsonplaceholder.typicode.com/posts', [
            'userId'=>4,
            'title'=>"New title",
            'body'=>"New description"
        ]);
        return $addpost->json();
    }

    public function singleposteditapi($id){
        $editpost = Http::put('https://jsonplaceholder.typicode.com/posts/'.$id , [
            'userId'=>4,
            'title'=>"Edit New Title ",
            'body'=>"Edit New Description"
        ]);
        return $editpost->json();
    }   
    public function deleteapi($id){
        $deletepost = Http::delete('https://jsonplaceholder.typicode.com/posts/'.$id );
        return $deletepost->json();
    }

}
