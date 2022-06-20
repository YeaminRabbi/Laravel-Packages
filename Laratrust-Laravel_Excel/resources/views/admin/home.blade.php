@extends('layouts.bootstrap')
@section('content')

    <section>
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-6">
                    <form action="{{ route('userRegistration') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" placeholder="Enter name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="user_type">Choose a User Type:</label>

                            <select class="form-control" name="user_type" id="user_type" required>
                                <option value="superadmin">Superadmin</option>
                                <option value="admin">Admin</option>
                                <option value="user" selected>User</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                      </form>
                </div>
                <div class="col-md-6">
                    <div class="row mb-3">
                        <div class="col-md-12">
                            <a href="{{ route('export') }}" class="btn btn-success">User List</a>
                            <a href="{{ route('export_column') }}" class="btn btn-primary">User List (Column)</a>
                        </div>
                    </div>
                    <table class="table" id="tableBox">
                        <thead class="thead-dark">
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">types</th>
                          </tr>
                        </thead>
                        <tbody>

                            @if ($users->isNotEmpty())
                                @foreach ($users as $key => $data)
                                    <tr>
                                        <th scope="row">{{ $key+1 }}</th>
                                        <td>{{ $data->name }}</td>
                                        <td>{{ $data->email }}</td>
                                        <td>@if ($data->hasRole('superadmin'))
                                            superadmin
                                        @elseif ($data->hasRole('admin'))
                                            admin
                                        @else
                                            user
                                        @endif</td>
                                    </tr>
                                @endforeach
                            @endif

                        </tbody>
                      </table>

                </div>
            </div>
        </div>
    </section>

@endsection
@section('footer_js')
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.js"></script>
<script>
    $(document).ready( function () {
        $('#tableBox').DataTable();
    } );
</script>
@endsection
