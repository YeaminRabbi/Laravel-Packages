<?php

namespace App\Exports;


use App\User;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithColumnWidths;

class ColumnExport implements FromView,WithColumnWidths
{


    public function view(): View
    {


        return view('excel.export_by_column', [
           'users' => User::get()

        ]);
    }

    public function columnWidths(): array
    {
        return [
            'A' => 10,
            'B' => 20,
            'C' => 40,
            'D' => 40,


        ];
    }
}
