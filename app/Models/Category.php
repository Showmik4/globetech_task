<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
   protected $fillable=['name','type','is_active'];
//    public function product(){
//     return $this->hasOne('App\Product','id','category_id');
// }
    public function product(){
        return $this->hasMany(Product::class);
     }
   
    //  public function prod(){
    //     return $this->belongsTo(Category::class);
    //  }

    public function itemProduct(){
        return $this->hasOneThrough(Item::class,Product::class);
     }
}