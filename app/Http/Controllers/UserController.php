<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Item;
use App\Models\Location;
use App\Models\Product;
use App\Models\SubCategory;
use App\Models\User;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Contracts\Auth\Middleware\AuthenticatesRequests;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function getUser(){

        $data=Auth::user();
        if($data){
            return response()->json(["status"=>"success","user"=>$data]);
        }

        return response()->json(["status"=>"failed",'user'=>'not found']);
       
    }
    public function register(Request $request){

        $validator=Validator::make($request->all(),[

            'name'=>'required',
          
            'email'=>'required',
            'password'=>'required'
        ]);

        if($validator->fails()){
            
            return response()->json(['status'=>'fails','validation_errors'=>$validator->errors()]);
        }
      

        $data=$request->all();
        $data['password']=Hash::make($request->password);
        $user=User::create($data);
        if($user){
            return response()->json(['status'=>'success','message'=>'User registration successful','data'=>$user]);
        }

        return response()->json(['status'=>'failed','message'=>'Failed']);
    }

    public function login(Request $request){
        
        $validator=Validator::make($request->all(),[

           
            'email'=>'required',
            'password'=>'required'
        ]);

        if($validator->fails()){
            
            return response()->json(['status'=>'fails','validation_errors'=>$validator->errors()]);
        }

        if(Auth::attempt(['email'=>$request->email,'password'=>$request->password])){

         
            $user = Auth::user();
 
           
            $token = $user->createToken('globetechtask')->accessToken;

            return response()->json(['status'=>'success','login'=>true,'token'=>$token,'user'=>$user]);
        }

        else{
            return response()->json(['status'=>'fails','message'=>'Not Login']);
         }
        
      

        
    }

    public function logout(Request $request){

        // $request->user()->currentAccessToken()->delete();
        // return response()->json(['status'=>'logout']);

        if (Auth::check()) {
            Auth::user()->AauthAcessToken()->delete();
            return response()->json(['status'=>'logout','message'=>'logout successfully']);
         }
    }

    public function getProduct(){

       
       
     
        $data=Product::with('category','subcategory')->get();
       
        if( $data){
            return response()->json(["status"=>"success","product"=>$data]);
        }

        return response()->json(["status"=>"failed",'product'=>'not found']);

       
       
    }

    public function getItem(){
        
        $data=Item::with('location','files','product')->get();
       
        if( $data){
            return response()->json(["status"=>"success","result"=>$data]);
        }

        return response()->json(["status"=>"failed",'product'=>'not found']);

    }


    

}

 



