<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    protected $table = "person";

    public function personaddress()
    {
        return $this->belongsToMany('App\Models\Address','person_address',
            'person_id','address_id')->withPivot(['person_id','address_id']);
    }
}
