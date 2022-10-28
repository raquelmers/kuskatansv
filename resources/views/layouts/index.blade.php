@extends('layouts.main');
@section('content')

<div class="container md-5">
        <div class="col md-7">
            <div class="card">
              <div class="card-header bg-info">
                AVAILABLE TRAVELS
              </div>
              <div class="p-4">
                <table class="table table-bordered">
                <thead>
                  <tr>
                    <a href="manage/createTravel" class="btn btn-info">Add new travel</a>
                  </tr>
                  <tr>
                    <th># Bus</th>
                    <th>Journey</th>
                    <th>Schedule</th>
                    <th>Type of Travel</th>
                    <th>Status</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($departure as $data)
                  <tr>
                    <td>
                      {{$data->departPlace}}
                    </td> 
                    <td>
                      {{$data->departDate}}
                    </td>
                    <td>
                      {{$data->departTime}}
                    </td>
                    <td>
                      tipo de viaje
                    </td>
                    <td>
                      status
                    </td>
                    <td>
                      <a href="/edit">reserve</a>
                    </td>
                  </tr>
                  @endforeach
                </tbody> 
            </div>
        </div>
    </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> 
  </body>
</html>

@endsection
