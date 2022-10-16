<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable=['item_id','title','category_id','subcategory_id','nagotiable','price','condition','description','min_quantity','validity'];
 
    // public function category(){
    //     return $this->hasMany('App\Category');
    // }

 

     public function subcategory(){
        return $this->belongsTo(SubCategory::class);
     }

     public function category(){
        return $this->belongsTo(Category::class);
     }

     public function item(){
        return $this->belongsTo(Item::class);
     }
   
   
}
