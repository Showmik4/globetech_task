<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    public function files(){
        return $this->hasMany(File::class);
     }

     public function location(){
        return $this->belongsTo(Location::class);
     }

     public function product(){
        return $this->hasOne(Product::class);
     }

    //  public function productcategory(){
    //     return $this->hasOneThrough(Category::class,Product::class);
    //  }

    //  public function productsubcategory(){
    //     return $this->hasOneThrough(SubCategory::class,Product::class);
    //  }
   
   
}
