@extends('layouts.app')



@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Profile') }}</div>
                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success mt-3">
                        {{ session('success') }}
                        </div>
                    @endif  
                    <div id="passwordHelpBlock" class="form-text text-muted mt-2">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                    </div>
                    <div class="row">
                        <div class="col-4 text-center mb-4">
                            @if(Auth::user()->avatar)
                                <img src="{{ Auth::user()->avatar }}" alt="Imatge de perfil" style="height: 76.75%; width: 96.75%; border-radius:2%;">
                            @else
                                <img src="{{ asset('images/user.jpg') }}" alt="Imatge de perfil" style="height: 76.75%; width: 96.75%; border-radius:2%;">
                            @endif
                            <a href="" class="btn btn-secondary mt-3 w-100">Canviar imatge</a>
                            <form action="{{ route('delete') }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-danger mt-3 w-100">Eliminar compte</button>
                            </form>
                        </div>
                        <div class="col-8">
                            <h2>Informació general</h2>

                            <form action="{{ route('profile.update') }}" method="POST">
                                @csrf
                                <label for="name">Nom:</label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="{{ Auth::user()->name }}">
                                <label for="email" class="mt-3">Email:</label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="{{ Auth::user()->email }}">
                                <label for="password" class="mt-3" >Contrasenya:</label>
                                <input type="password" name="password" id="password" class="form-control" required>
                                <button type="submit" class="btn btn-success mt-4 w-100">Desar canvis</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="card-footer">
                    <a href="{{ route('home') }}" class="btn btn-dark w-100">Torna a l'inici</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection