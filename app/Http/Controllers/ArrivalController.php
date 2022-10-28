<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Arrival;

class ArrivalController extends Controller
{

    public function index()
    {
        $arrival = Arrival::All();
        return $arrival;
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $arrival = new Arrival();
        $arrival->idDeparture = $request->idDeparture;
        $arrival->arrivalPlace = $request->arrivalPlace;
        $arrival->arrivalDate = $request->arrivalDate;
        $arrival->arrivalTime = $request->arrivalTime;

        $arrival->save();
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
        
        $arrival = Arrival::findOrFail($id);
        $arrival->idDeparture = $request->idDeparture;
        $arrival->arrivalPlace = $request->arrivalPlace;
        $arrival->arrivalDate = $request->arrivalDate;
        $arrival->arrivalTime = $request->arrivalTime;

        $arrival->save();
    }

    public function destroy($id)
    {
        $arrival = Arrival::destroy($id);
        return $arrival;
    }
}
