<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ApiAuthController extends Controller
{

	public function login (Request $request) {
	    $validator = Validator::make($request->all(), [
	        'email' => 'required|string|email|max:255',
	        'password' => 'required|string|min:6',
	    ]);
	    if ($validator->fails())
	    {
	    	$return_data = array('success'=>'false','message'=>'Validation fail','result'=>$validator->errors()->all());
	        return response($return_data, 422);
	    }
	    $user = User::where('email', $request->email)->first();
	    if ($user) {
	        if (Hash::check($request->password, $user->password)) {
	            $token = $user->createToken('API Token')->accessToken;
	            $response = ['token' => $token];
	            $return_data = array('success'=>'true','message'=>'success','result'=>$response);
	            return response($return_data, 200);
	        } else {
	            
	            $return_data = array('success'=>'false','message'=>'Password mismatch','result'=>'');
	            return response($return_data, 422);
	        }
	    } else {
	        $return_data = array('success'=>'false','message'=>'User does not exist','result'=>'');
	        return response($return_data, 422);
	    }
	}

	public function logout (Request $request) {
		try {
			$token = $request->user()->token();
		    $token->revoke();
		    $data = ['message' => 'You have been successfully logged out!'];
		    $return_data = array('success'=>'true','message'=>'success','result'=>$data);
		    return response($return_data, 200);
		
		} catch (\Exception $e) {
		    $return_data = array('success'=>'false','message'=>'Something went to wrong','result'=>'');
			return response($return_data, 422);
		}
	}

	public function show()
	{
		try {
			$userdata = User::with('person','person.personaddress','person.personaddress.state','person.personaddress.state.country')->findorfail(\Auth::user()->id);
			$return_data = array('success'=>'true','message'=>'success','result'=>$userdata);
			return response($return_data, 200);
		
		} catch (\Exception $e) {
		    $return_data = array('success'=>'false','message'=>'User not found','result'=>$e->getMessage());
			return response($return_data, 404);
		}
		
	}
}
