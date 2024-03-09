<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
class ArticlesController extends Controller
{
    function show(){
        $data = Article::paginate(5);
        return view('articles', ['articles'=>$data]);

    }
    
}
