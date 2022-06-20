<table>
    <thead>
    <tr>
        <th>SL</th>
        <th>Name</th>
        <th>Email</th>
        <th>Created At</th>


    </tr>
    </thead>
    <tbody>
    @foreach($users as $key => $data)
        <tr>
            <td>{{ $key+1 }}</td>
            <td>{{ $data->name }}</td>
            <td>{{ $data->email }}</td>
            <td>{{ $data->created_at }}</td>

        </tr>
    @endforeach
    </tbody>
</table>
