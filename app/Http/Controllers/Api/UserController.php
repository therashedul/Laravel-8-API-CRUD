<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Hash;
use Validator;
use Illuminate\Support\Facades\Auth;
use Response;
class UserController extends Controller
{
    public function resigteruser(Request $request){
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
                            if(Auth::attempt(['email'=> $data['email'], 'password'=> $data['password']])){
                                
                                $user  = User::where('email', $data['email'])->first();
                                $access_token = $user->createToken($data['email'])->accessToken;

                                User::where('email', $data['email'])->update(['access_token' => $access_token]);
                                $massage = 'user register successfully';
                                return \response()->json(['massage', $massage,'access_token', $access_token], 201); // 201 for date insert code
                            }else{
                                $massage = 'Opps! something wrong';
                                return \response()->json(['massage', $massage], 422); 
                            }

                    //    $name = $request->name;
                    //    return $name;
                
                    //    $user = User::first();
                    //    $token = $user->createToken('Token Name')->accessToken;
                    //    return $token;
                }
    }

     public function userlogin(Request $request){
          if($request->isMethod('post')){
            $data = $request->all();
            $roles = [
                'email'=>'required|email|exists:users',
                'password'=>'required',
            ];
            $customMessages = [
                'email.required'=>'Email is required',
                'email.email'=>'Email must be valied',
                'email.exists'=>'Email does not exists',
            ];
            $validetor = Validator::make($data, $roles, $customMessages);

            if($validetor->fails()){
                return \response()->json($validetor->errors(), 422);  // 422 user for error code
            }
            if(Auth::attempt(['email' => $data['email'], 'password' => $data['password']])){
                $user  = User::where('email', $data['email'])->first();

                $access_token = $user->createToken($data['email'])->accessToken;
                User::where('email', $data['email'])->update(['access_token' => $access_token]);
                $massage = 'user login successfully';
                return \response()->json(['massage', $massage,'access_token', $access_token], 200); // 201 for date insert code
            }else{
                 $massage = 'Opps! something wrong';
                return \response()->json(['massage', $massage], 422); 
            }

        }

    }


//    public function userlogin(Request $request){
//           if($request->isMethod('post')){
//             $data = $request->all();

//             $roles = [
//                 'email'=>'required|email|exists:users',
//                 'password'=>'required',
//             ];
//             $customMessages = [
//                 'email.required'=>'Email is required',
//                 'email.email'=>'Email must be valied',
//                 'email.exists'=>'Email does not exists',
//             ];
//             $validetor = Validator::make($data, $roles, $customMessages);

//             if($validetor->fails()){
//                 return \response()->json($validetor->errors(), 422);  // 422 user for error code
//             }
//             if(Auth::attempt(['email'=> $data['email'], 'password'=> $data['password']])){
//                 // $user  = User::where('email', $data['email'])->first();

//                 // $access_token = $user->createToken($data['email'])->accessToken;
//                 // User::where('email', $data['email'])->update(['access_token' => $access_token]);
//                 $massage = 'user login successfully';
//                 return \response()->json(['massage', $massage,'access_token', $access_token], 200); // 201 for date insert code
//             }else{
//                  $massage = 'Opps! something wrong';
//                 return \response()->json(['massage', $massage], 422); 
//             }

//         }

//     }


//    public function userlogin(Request $request){
//         $header=$request->header('anyname');  // anyname like postman key value
//           if($request->isMethod('post')){
//             $data = $request->all();

//             if($header == ''){
//                 $massage = 'Opps! Authorization is requerd';
//                 return \response()->json(['massage', $massage], 422); 
//             }else{
//                 if($header == 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5NzQzNDIxYS1mNDk5LTQ4YWQtOWMxMi1jODJlYjdmMzJkYTMiLCJqdGkiOiI1Nzc5ZmIyZDA4MDMwNmNjMzExNmRlNzU3NWZhNTgxNDY4M2M4ODg0Y2UzNWZhZWJiNjMxMmEyZWI3YTI3OGYxOGI5NTY4M2JiYzUzODFmZiIsImlhdCI6MTY2MzIzMjUxMi4zMzE0MjEsIm5iZiI6MTY2MzIzMjUxMi4zMzE0MzEsImV4cCI6MTY5NDc2ODUxMS4zOTk4MDcsInN1YiI6IjYiLCJzY29wZXMiOltdfQ.xqC5IGe8GtXdSsgj9ROogl3A6eN74KqcSDoS194qTjZh3PUFz_gah_f2ZHBy9y3YlixvaI2aZ-aTQLZNGRtF6pNSWUvL40OmcFFT-EBoHq72Uwx3qiSIBAbCCjvrF-mKZGBXtwEKEUVbYuEhu0z-biGevSUQP_D2H_vxEncr6CL0zsXA5jJ-pb-9c9idOHFMycw00zZ69tY44iAe8yL_SeicomeYkWMDaVd0nC26iTm8Z-_koiC2utu3Q3UJfPGexkZx5MNPDE6jnSm8gw7lVpoQ3rj1Vn5TdriF_YZmvjsn5nXrkm7Kppw5KcWag-47zfYFMQVN8V3l9QMaasdTtpZZ_3F351cIFF9E9yOX0E8-V4Zlc8bsqqltZRlo9guYYstfl6cv_KAe5ZSY-_m5aHIB44LpyVhhCpZnEDJUOMKZUVTlE4VFEgKwkrED-aijGOWjAsA3wi5kQOWEADAjLvGDG00YH4vnRF8uHUqTE2EBq6jWZnIWQ_t-YT0pI2E4u3s57HjhBTKCVJ3rrr-oonl6uAU9gdLR0fTUfH1FSKLX_O9UJdFl9bjSzOqHqs8Bot8OMpY3_xshPGt9JbckKzsi-gG0Nhh1Eg6R-vyeK2JIWCuWU95Xu5VJYHAgFwNMeK8EudATuTyWsmf-U8terO3uA3tRMjKPcYF0RcYARd8'){

//                     $roles = [
//                         'email'=>'required|email|exists:users',
//                         'password'=>'required',
//                     ];
//                     $customMessages = [
//                         'email.required'=>'Email is required',
//                         'email.email'=>'Email must be valied',
//                         'email.exists'=>'Email does not exists',
//                     ];
//                     $validetor = Validator::make($data, $roles, $customMessages);
        
//                     if($validetor->fails()){
//                         return \response()->json($validetor->errors(), 422);  // 422 user for error code
//                     }
//                 if(User::where('email', $data['email'])){
//                         return User::where('email', $data['email'])->first();

//                         // $user  = User::where('email', $data['email'])->first();        
//                         // $access_token = $user->createToken($data['email'])->accessToken;
//                         // User::where('email', $data['email'])->update(['access_token' => $access_token]);
//                         // $massage = 'user login successfully';
//                         // return \response()->json(['massage', $massage,'access_token', $access_token], 200); // 201 for date insert code
//                     }else{
//                          $massage = 'Opps! something wrong';
//                         return \response()->json(['massage', $massage], 422); 
//                     }
//                 }
//                 else{
//                          $massage = 'Authrization does no match';
//                         return \response()->json(['massage', $massage], 422); 
//                     }
//             }


//         }

//     }

}




