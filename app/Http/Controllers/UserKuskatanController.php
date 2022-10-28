<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserKuskatan;

class UserKuskatanController extends Controller
{

    public function index()
    {
        $userk = UserKuskatan::All();
        return $userk;
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $userk = new UserKuskatan();
        $userk->firstName = $request->firstName;
        $userk->lastName = $request->lastName;
        $userk->userName = $request->userName;
        $userk->userPasswrd = $request->userPasswrd;
        $userk->save();
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        $userk = UserKuskatan::findOrFail($request->id);
        $userk->firstName = $request->firstName;
        $userk->lastName = $request->lastName;
        $userk->userName = $request->userName;
        $userk->userPasswrd = $request->userPasswrd;

        $userk->save();
    }

    public function destroy($id)
    {
        $userk = User::destroy($id);
        return $userk;
    }
}
