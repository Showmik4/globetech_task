<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    use HasFactory;
    public function product(){
        return $this->hasOne(Product::class);
     }

     public function itemproduct(){
        return $this->hasOneThrough(Item::class,Product::class);
     }
}
