<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        return view('pages.home');
    }
    //HOME
    public function category(){
        return view('pages.category');
    }
    public function single_pr(){
        return view('pages.single_pr');
    }
    public function checkout(){
        return view('pages.checkout');
    }
    public function cart(){
        return view('pages.cart');
    }
    public function confirmation(){
        return view('pages.confirmation');
    }
    //BLOG
    public function blog(){
        return view('pages.blog');
    }
    public function single_bl(){
        return view('pages.single_bl');
    }
    //PAGES
    public function tracking(){
        return view('pages.tracking');
    }
    public function element(){
        return view('pages.element');
    }
}
