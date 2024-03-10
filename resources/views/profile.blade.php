@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Profile') }}</div>

                <div class="card-body">
                    <p>Nom: {{ Auth::user()->name }}</p>
                    <p>Email: {{ Auth::user()->email }}</p>

                    

                </div>

                <div class="card-footer">
                    <a href="{{ route('home') }}" class="btn btn-dark w-100">Torna a l'inici</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection