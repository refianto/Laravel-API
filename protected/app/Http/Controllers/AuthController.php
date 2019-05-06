<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;

class AuthController extends Controller
{
    public function register(Request $req)
    {
    	$req->validate([
    		'name' => 'required|min:4|max:16',
    		'email' => 'required',
    		'password' => 'required',
    	]);

    	$db = new User;
    	$db->name = $req->name;
    	$db->email = $req->email;
    	$db->password = bcrypt($req->password);
    	$db->name = $req->name;

    	$db->save();
        if (Auth::attempt(['email' => $req->email , 'password' => $req->password])) {
            $token = Auth()->user()->createToken('TutsForWeb')->accessToken;
            $response = array(
                'msg' => 'User created',
                'token' => $token,
            );
            return response()->json($response);

        }
        if (!$db->save()) {
            $response = array(
                'msg' => 'Invalid Data!'
            );
            return response()->json($response);   
        }
    }

    public function login(Request $req)
    {
    	if (Auth::attempt(['email' => $req->email, 'password' => $req->password])) {
    		$token = Auth()->user()->createToken('TutsForWeb')->accessToken;

    		$response = array(
    			'msg' => 'You are logined',
    			'token' => $token,
    		);
    		return response()->json($response);
    	}

    	$response = array(
    		'msg' => 'invalid username or password',
    	);

    	return response()->json($response);
    }
}
