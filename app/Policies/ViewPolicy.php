<?php

namespace App\Policies;
use Illuminate\Support\Facades\Auth;

use App\User;
use App\Goal;


class ViewPolicy
{

    /**
     * Determine whether the user can view the project.
     *
     * @param  \App\User  $user
     * @param  \App\Goal  $project
     * @return mixed
     */
    public function userPassage($goal, $id)
    {
       $user = Auth::user();

      $data = $goal->findOrfail($id);

      if ($user->id === $data->owner_id) {
           return true;
      }
          return false;
      
    }
   
}
