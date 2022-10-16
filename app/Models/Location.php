<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;
    // public function itemfile(){
    //     return $this->hasOneThrough(File::class,Item::class);
    //  }

    public function items(){
        return $this->hasOne(Item::class);
     }
   
}
