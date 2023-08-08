<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = User::all();
        //dd($users);
        $count_users = User::count();
        //dd($count_users);
        return view('admin.dashboard', compact('users', 'count_users'));
    }

    public function logout()
    {
         \Auth::logout();

        return redirect('/login');
    }
}
