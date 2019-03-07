<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


Use App\User;


class RegistrationController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function store(Request $request) {

    	$this->validate($request, [
    		'name' => 'required',
    		'email' => 'required|email|unique:users',
    		'phone_number' => 'required|min:8',
    		'password' => 'required|min:6|confirmed',
            'account_type' => 'required'
    	]);

    	//generate a ramdom api token for user recognition
    	$generateRandomString = Str::random(60);

        $token = hash('sha256', $generateRandomString);
        //Generatate a token for the password recvery process
        $generateRecoveryToken = Str::random(60);

        $password_recover_token = hash('sha256', $generateRecoveryToken);
        
        //insert the details into the user class and into the model class

    	$user = new User();

    	$user->name = $request->input('name');
    	$user->email = $request->input('email');
        $user->password_recover_token = $password_recover_token;
    	$user->phone_number = $request->input('phone_number');
    	$user->password = Hash::make($request->input('password'));
        $user->account_type = $request->input('account_type');
        
        $user->api_token = $token;

    	$user->save();

    	return response()->json(['data' => ['success' => true, 'user' => $user, 'token' => 'Bearer ' .$token ]], 201);
        
    }
}
