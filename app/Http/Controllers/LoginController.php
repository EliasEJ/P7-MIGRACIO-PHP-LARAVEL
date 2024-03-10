<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;


class LoginController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $credentials['email'])->first();

        if (!$user) {
            return back()->withErrors([
                'email' => 'No existeix cap usuari amb aquest correu electrònic'
            ]);
        }

        if (Auth::attempt($credentials)) {
            $request->session()->forget('failed_attempts');

            $request->session()->regenerate();

            return redirect()->intended('home');
        }

        $numErrors = $request->session()->get('failed_attempts', 0) + 1;

        $request->session()->put('failed_attempts', $numErrors);

        if ($numErrors >= 3) {
            // Mostrar reCaptcha
        }

        return back()->withErrors([
            'email' => 'Les credencials proporcionades no coincideixen amb els nostres registres'
        ]);
    }

    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}