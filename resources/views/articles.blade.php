<!DOCTYPE html>
<html lang="ca">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Articles</title>
    <link rel="stylesheet" href="">
    <style>
        svg {
            width: 1em;
            height: 1em;
        }
        div{
            margin-top: 0.6rem;
        }
    </style>    
</head>
<body>
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


    <div class="mt-3 container-fluid text-center">
    {{ $articles->links()}}
    </div>
    @endsection

</body>
</html>