<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Departure;

class DepartureController extends Controller
{
    public function index()
    {
        $departure = Departure::All();
        return $departure;
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $departure = new Departure();
        $departure->departPlace = $request->departPlace;
        $departure->departDate = $request->departDate;
        $departure->departTime = $request->departTime;

        $departure->save();
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
        $departure = Departure::findOrFail($id);
        $departure->departPlace = $request->departPlace;
        $departure->departDate = $request->departDate;
        $departure->departTime = $request->departTime;

        $departure->save();
    }

    public function destroy($id)
    {
        $departure = Departure::destroy($id);
        return $departure;
    }
}
