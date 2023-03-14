<?php

namespace App\Http\Controllers;
use App\Http\Requests;
use Illuminate\Support\Facades\Session; 
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\DB;
session_start();

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function login_page(){
        return view('admin_login');
    }

    public function admin_index(){
        return view('admin.home_admin');
    }

    public function dashboard(Request $request)
    {
        $email = $request -> admin_email;
        $password = md5($request -> admin_password);
        $result = DB::table('tbl_admin') -> where('admin_email',$email) 
        ->where('admin_password',$password) -> first();
        //return view('admin.dashboard');
        if($result)
        {
            Session::put('admin_email',$result->admin_name);
            Session::put('admin_id',$result->admin_id);
            return Redirect::to('/dashboard');
        }
        else
        {
            Session::put('message','Bạn nhập sai tài khoản và mật khẩu');
            return Redirect::to('/admin');
        
        }
        
    }

    public function logout_page(){
        Session::put('ad_email',null);
        return Redirect::to('admin');
    }
}
