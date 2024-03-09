@extends('layouts.app')

@section('content')
<h1 class="mt-4 text-center">Articles</h1>
    <div class="container mt-5">
        <table class="table table-striped border">
            <tr>
                <th>ID</th>
                <th>Article</th>
            </tr>
            @foreach ($articles as $article)
            <tr>
                <td>{{$article['id']}}</td>
                <td>{{$article['article']}}</td>
            </tr>
            @endforeach
        </table>
    </div>
@endsection
