<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LevelController extends Controller
{
    //
    public function index()
    {
        // //DB::insert("insert into m_level(level_kode, level_nama, created_at) values(?, ?, ?)", ['CUS', 'Pelanggan', now()]);
        // //return 'Insert data baru berhasil';

        // // $row = DB::update("update m_level set level_nama = ? where level_kode = ?", ['Customer', 'CUS']);
        // // return 'Update data berhasil. Jumlah data yang diupdate: ' . $row . ' baris';

        // // $row = DB::delete("delete from m_level where level_kode = ?", ['CUS']);
        // // return 'Delete data berhasil. Jumlah data yang dihapus: ' . $row . ' baris';

        // Kode ini untuk select/menampilkan data [cite: 1093, 1122]
        $data = DB::select("select * from m_level");
        
        // Kirim data ke view 'level' [cite: 1124]
        return view('level', ['data' => $data]);
    }
}