<!DOCTYPE html>
<html lang="ca">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        svg {
            width: 1em;
            height: 1em;
        }
    </style>    
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark ">
        <div class="container-fluid justify-content-center">
            <a class="navbar-brand text-black" href="{{ route('articles') }}">ARTICLES</a>
        </div>
    </nav>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header text-center">
                        <h4 class="mt-1">Inicia sessió</h4>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('login') }}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="email" class="form-label">Correu electrònic</label>
                                <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                            <button type="submit" class="btn btn-dark w-100"><b>Inicia sessió</b></button>
                        </form>
                        <div class="text-center mt-3">
                        <p>Has oblidat la contrasenya? <a href="{{ route('forgotpassword') }}">Recupera-la</a></p>
                    </div>
                    <div class="text-center mt-3">
                        <p>No tens compte? <a href="{{ route('register') }}">Registra't</a></p>
                    </div>
                        <div class="text-center mt-3">
                            <p><b>O</b></p>
                            <button class="btn border">
                                <img src="https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png" alt="Google logo" width="20" height="20">
                                <b>Inicia sessió amb Google</b>
                            </button>
                            <button class="btn btn-dark">
                                <img src="https://static-00.iconduck.com/assets.00/github-icon-2048x1988-jzvzcf2t.png" alt="GitHub logo" width="20" height="20">
                                <b>Inicia sessió amb GitHub</b>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>