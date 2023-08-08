<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Teacher;
use Hash;
use Validator;
use Auth;



class LoginController extends Controller
{
    public function userDashboard()
    {
        $users = User::all();
        $success = $users;

        return response()->json($success, 200);
    }

    public function userLogin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['error' => $validator->errors()->all()]);
        }

        // if(auth()->guard('user-api')->attempt(['email' => request('email'), 'password' => request('password')])){

        //     config(['auth.guards.api.provider' => 'users']);
            
        //     $user = User::select('users.*')->find(auth()->guard('user-api')->user()->id);
        //     $success =  $user;
        //     $success['token'] =  $user->createToken('MyApp',['users'])->accessToken; 

        //     return response()->json($success, 200);
        // }else{ 
        //     return response()->json(['error' => ['Email and Password are Wrong.']], 200);
        // }
       // dd(auth()->attempt(['email' => request('email'), 'password' => request('password')]));
        if (!auth()->attempt(['email' => request('email'), 'password' => request('password')])) {
            return response(['error_message' => 'Incorrect Details. 
            Please try again']);
        }

        $token = auth()->user()->createToken('authToken',['users'])->accessToken;

        return response(['user' => auth()->user(), 'token' => $token]);
    }


    public function teacherRegister(Request $request)
    {
        //dd($request->all());
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:teachers,email',
            'mobile' => 'required|string',
            'password' => 'required|string|min:6',
        ]);

        // Create a new Teacher instance
        $teacher = new Teacher();
        $teacher->name = $request->input('name');
        $teacher->email = $request->input('email');
        $teacher->mobile = $request->input('mobile');
        $teacher->password = Hash::make($request->input('password'));

        $teacher->save();

        return response()->json(['message' => 'Teacher registered successfully'], 201);
    }

    public function teacherLogin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['error' => $validator->errors()->all()]);
        } 
      //  dd(Auth::guard('teacher-api')->user());

      if (!auth()->guard('teacher')->attempt(['email' => request('email'), 'password' => request('password')])) {
        return response(['error_message' => 'Incorrect Details. 
        Please try again']);
    }

    $token = auth()->guard('teacher')->user()->createToken('authToken',['teachers'])->accessToken;

    return response(['user' => auth()->guard('teacher')->user(), 'token' => $token, 'statusCode' => 200]);




    }


    public function teacherDashboard()
    {
        $users = Teacher::all();
        $success = $users;

        return response()->json($success, 200);
    }


    public function teacherLogout()
    {

       // dd(auth()->user()->token());
        $accessToken = auth()->user()->token();
       // dd($accessToken);
        $accessToken->revoke();
        
            return response()->json([
                'message' => 'Successfully logged out'
            ]);
        
        
    }

    public function userLogout()
    {
        $accessToken = auth()->user()->token();
       // dd($accessToken);
        $accessToken->revoke();
        
            return response()->json([
                'message' => 'Successfully logged out'
            ]);

    }


}