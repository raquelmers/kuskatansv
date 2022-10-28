<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bus;

class BusController extends Controller
{

    public function index()
    {
        $bus = Bus::All();
        return $bus;
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $bus = new Bus();
        $bus->busPlate = $request->busPlate;
        $bus->nameBus = $request->nameBus;
        $bus->numSeats = $request->numSeats;
        $bus->busStatus = $request->busStatus;

        $bus->save();
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
        $bus = Bus::findOrFail($request->id);
        $bus->busPlate = $request->busPlate;
        $bus->nameBus = $request->nameBus;
        $bus->numSeats = $request->numSeats;
        $bus->busStatus = $request->busStatus;
        $bus->save();
    }


    public function destroy($id)
    {
        $bus = Bus::destroy($id);
        return $bus;
    }
}
