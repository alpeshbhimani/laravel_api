<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $table = "address";

    public function state()
    {
        return $this->hasOne('App\Models\State','id','state_id');
    }

    public function persons(){
    	return $this->belongsToMany('App\Models\Person','person_address',
    		'address_id','person_id')->withPivot(['address_id','person_id']);
    }
}
