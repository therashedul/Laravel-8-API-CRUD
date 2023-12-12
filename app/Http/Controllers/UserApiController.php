<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Validator;
use Illuminate\Support\Facades\Auth;
use Response;


class UserApiController extends Controller
{
    public function showuser($id =null){  
        if($id == ''){
            $users = User::get();
            return \response()->json(['users'=>$users], 200);  /// 200 vew scessfull code
        }else{
            $users = User::find($id);
            return \response()->json(['users'=>$users], 200);

        }
    }
    // Add single user add
    public function adduser(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();

            $roles = [
                'name'=>'required',
                'email'=>'required|email|unique:users',
                'password'=>'required',
            ];
            $customMessages = [
                'name.required'=>'Name is required',
                'email.required'=>'Email is required',
            ];
            $validetor = Validator::make($data, $roles, $customMessages);

            if($validetor->fails()){
                return \response()->json($validetor->errors(), 422);  // 422 user for error code
            }

            // return $data;
            $user = new User();
            $user->name = $data['name'];
            $user->email = $data['email'];
            $user->password = bcrypt($data['password']);
            $user->save();

            $massage = 'user add successfully';
            return \response()->json(['massage', $massage], 201); // 201 for date insert code

        }

    }     
    // Add multipul user 
    public function addmultiuser(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            
            $roles = [
                'users.*.name'=>'required',
                'users.*.email'=>'required|email|unique:users',
                'users.*.password'=>'required',
            ];
            $customMessages = [
                'users.*.name.required'=>'Name is required',
                'users.*.email.required'=>'Email is required',
                'users.*.password.required'=>'Password is required',
            ];
            $validetor = Validator::make($data, $roles, $customMessages);
            
            if($validetor->fails()){
                return \response()->json($validetor->errors(), 422);  // 422 user for error code
            }
            
          foreach( $data['users'] as $adduser ){
              // return $data;
                $user = new User();
                $user->name = $adduser['name'];
                $user->email = $adduser['email'];
                $user->password = bcrypt($adduser['password']);
                $user->save();
                $massage = 'multiuser add successfully';
            }
            return \response()->json(['massage', $massage], 201); // 201 for date insert code
            
        }
        
    }

    // Update user 
    public function userupdate(Request $request, $id){
       if($request->isMethod('put')){
           $data = $request->all();
    
           $roles = [
               'name'=>'required',
               'password'=>'required',
           ];
           $customMessages = [
               'name.required'=>'Name is required',
           ];
           $validetor = Validator::make($data, $roles, $customMessages);
    
           if($validetor->fails()){
               return \response()->json($validetor->errors(), 422);  // 422 user for error code
           }
    
           // return $data;
           $user = User::findOrFail($id);
           $user->name = $data['name'];
           $user->password = bcrypt($data['password']);
           $user->save();
    
           $massage = 'user update successfully';
           return \response()->json(['massage', $massage], 202); // 202 for date update code
    
       }
    
    } 
     // Update user 
    public function singleuserupdate(Request $request, $id){
       if($request->isMethod('patch')){
           $data = $request->all();
    
           $roles = [
               'name'=>'required',
           ];
           $customMessages = [
               'name.required'=>'Name is required',
           ];
           $validetor = Validator::make($data, $roles, $customMessages);
    
           if($validetor->fails()){
               return \response()->json($validetor->errors(), 422);  // 422 user for error code
           }
    
           // return $data;
           $user = User::findOrFail($id);
           $user->name = $data['name'];
           $user->save();
    
           $massage = 'Single user update successfully';
           return \response()->json(['massage', $massage], 202); // 202 for date update code
    
       }
    }  
    public function deletesingleuser($id){

        User::findOrFail($id)->delete();
        $massage = 'Single user Delete successfully';
           return \response()->json(['massage', $massage], 200); // 202 for date update code

    }    
    public function deletemultiuser(Request $request){
        $header = $request->header("anyName");  // anyName is like header  key 
        if($header == ''){
            $massage = 'Authrization is requred';
            return \response()->json(['massage', $massage], 422); // 200 for date success code
        }
        else{
            if($header == 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IndlYmhhdGJkIiwiaWF0IjoxNTE2MjM5MDIyfQ.6Wut8c55YJ7xtMR-Kr--nC5spVQnrmjxPtgh22J-8NM'){
                if($request->isMethod('delete')){
                    $data = $request->all();
                    User::whereIn('id', $data['ids'])->delete();  // use whereIn for multi user delete
                    $massage = 'user Delete successfully';
                    return \response()->json(['massage', $massage], 200); // 200 for date success code
                }
            }else{
                $massage = 'Authrization does no match';
                return \response()->json(['massage', $massage], 422); // 200 for date success code
            }
        }
    }
    public function resigteruser(Request $request){
        if($request->isMethod('post')){
            // $data = $request->all();
            // $user = User::first();
            // return $user;

        $token = $user->createToken('Token Name')->accessToken;
        return $token;

            // $roles = [
            //     'name'=>'required',
            //     'email'=>'required|email|unique:users',
            //     'password'=>'required',
            // ];
            // $customMessages = [
            //     'name.required'=>'Name is required',
            //     'email.required'=>'Email is required',
            // ];
            // $validetor = Validator::make($data, $roles, $customMessages);

            // if($validetor->fails()){
            //     return \response()->json($validetor->errors(), 422);  // 422 user for error code
            // }

            // // return $data;
            // $user = new User();
            // $user->name = $data['name'];
            // $user->email = $data['email'];
            // $user->password = bcrypt($data['password']);
            // $user->save();
            // if(Auth::attempt(['email'=> $data['email'], 'password'=> $data['password']])){
                
            //     $user  = User::where('email', $data['email'])->first();
            //     $access_token = $user->createToken($data['email'])->accessToken;

            //     User::where('email', $data['email'])->update(['access_token' => $access_token]);
            //     $massage = 'user register successfully';
            //     return \response()->json(['massage', $massage,'access_token', $access_token], 201); // 201 for date insert code
            // }else{
            //      $massage = 'Opps! something wrong';
            //     return \response()->json(['massage', $massage], 422); 
            // }

        }
    }    
    // public function userlogin(Request $request){
    //       if($request->isMethod('post')){
    //         $data = $request->all();

    //         $roles = [
    //             'email'=>'required|email|exists:users',
    //             'password'=>'required',
    //         ];
    //         $customMessages = [
    //             'email.required'=>'Email is required',
    //             'email.email'=>'Email must be valied',
    //             'email.exists'=>'Email does not exists',
    //         ];
    //         $validetor = Validator::make($data, $roles, $customMessages);

    //         if($validetor->fails()){
    //             return \response()->json($validetor->errors(), 422);  // 422 user for error code
    //         }
    //         if(Auth::attempt(['email' => $data['email'], 'password' => $data['password']])){
    //             $user  = User::where('email', $data['email'])->first();

    //             $access_token = $user->createToken($data['email'])->accessToken;
    //             User::where('email', $data['email'])->update(['access_token' => $access_token]);
    //             $massage = 'user login successfully';
    //             return \response()->json(['massage', $massage,'access_token', $access_token], 200); // 201 for date insert code
    //         }else{
    //              $massage = 'Opps! something wrong';
    //             return \response()->json(['massage', $massage], 422); 
    //         }
    //     }
    // }   
    
}
