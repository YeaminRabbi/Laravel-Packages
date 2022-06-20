<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;


use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Exports\UsersExport;
use App\Exports\ColumnExport;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // $user = Auth::user();
        // $role = Laratrust::hasRole('role-name');
        $users = User::all();
        return view('admin.home', compact('users'));
    }

    function userRegistration(Request $req)
    {

        $req->validate([
            'name' => 'required',
            'email' => 'email:rfc,dns',
            'password' => 'required'

        ]);

        $user = new User;
        $user->name = $req->name;
        $user->email = $req->email;
        $user->password =  Hash::make("123");
        $user->email_verified_at = Carbon::now();

        $user->save();

        if($req->user_type == 'superadmin')
        {
            $RegisteredUser = User::find($user->id);
            $RegisteredUser->attachRole('superadmin');
            $RegisteredUser->save();
        }
        else if ($req->user_type == 'admin'){
            $RegisteredUser = User::find($user->id);
            $RegisteredUser->attachRole('admin');
            $RegisteredUser->save();
        }
        else{
            $RegisteredUser = User::find($user->id);
            $RegisteredUser->attachRole('user');
            $RegisteredUser->save();
        }


        return back();
    }

    public function export()
    {
        return Excel::download(new UsersExport, 'users-list.xlsx');
    }

    public function export2()
    {
        return Excel::download(new ColumnExport, 'user-list-byColumn.xlsx');

        
    }
}
