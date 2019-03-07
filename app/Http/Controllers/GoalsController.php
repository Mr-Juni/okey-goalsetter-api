<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

use App\Goal;
use App\Policies\ViewPolicy;


class GoalsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index() {
    	$user = Auth::user();

    //fetching the goal
    $goals = Goal::where('owner_id', $user->id)->get();

       return response()->json(['data' => ['success' => true, 'goals' => $goals]], 201);

    }

    public function show(Goal $goal, ViewPolicy $viewpolicy, $id) {

    	   $datail = $viewpolicy->userPassage($goal, $id);

    	   if ($datail) {
    	   	  $data = $goal->findOrfail($id);
    	   	  return response()->json(['data' => [ 'success' => true, 'goal' => $data ]], 200);
    	   }else {
    	   	  return response()->json(['data' => [ 'error' => false, 'message' => 'Unauthorization' ]], 401);
    	   }
        	
        }
     

}
