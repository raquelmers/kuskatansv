<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Passenger;

class PassengerController extends Controller
{

    public function index()
    {
        $passenger = Passenger::All();
        return $passenger;
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $passenger = new Passenger();
        $passenger->idUser = $request ->idUser;
        $passenger->typePassenger = $request->typePassenger;
        $passenger->save();
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
        $passenger = Passenger::findOrFail($id);
        $passenger->typePassenger = $request->typePassenger;
        $passenger->save();
    }

    public function destroy($id)
    {
        $passenger = Passenger::destroy($id);
        return $passenger;
    }
}
