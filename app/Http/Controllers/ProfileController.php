<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
    public function update(Request $request)
    {
        $user = Auth::user();

        $request->validate([
            'name' => 'alpha|max:255',
        ]);

        if (!Hash::check($request->input('password'), $user->password)) {
            return back()->withErrors(['password' => 'La contraseya es incorrecta']);
        }

        if ($request->filled('email') && $request->input('email') !== $user->email) {
            $userExists = User::where('email', $request->input('email'))->first();

            if ($userExists) {
                return back()->withErrors(['email' => 'El correu ja existeix']);
            }
        }

        if ($request->filled('name')) {
            $user->name = $request->input('name');
        }

        if ($request->filled('email')) {
            $user->email = $request->input('email');
        }

        $user->save();

        return back()->with('success', 'Perfil actualitzat correctament');
    }
}