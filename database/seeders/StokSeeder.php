<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class StokSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $tanggal = Carbon::now(); // Tentukan satu tanggal untuk semua stok awal

        $data = [

            ['barang_id' => 1, 'supplier_id' => 1, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 100],
            ['barang_id' => 2, 'supplier_id' => 1, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 50],
            ['barang_id' => 3, 'supplier_id' => 1, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 75],
            ['barang_id' => 4, 'supplier_id' => 1, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 100],
            ['barang_id' => 5, 'supplier_id' => 1, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 80],
            

            ['barang_id' => 6, 'supplier_id' => 2, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 60],
            ['barang_id' => 7, 'supplier_id' => 2, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 100],
            ['barang_id' => 8, 'supplier_id' => 2, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 120],
            ['barang_id' => 9, 'supplier_id' => 2, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 90],
            ['barang_id' => 10, 'supplier_id' => 2, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 100],
            

            ['barang_id' => 11, 'supplier_id' => 3, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 50],
            ['barang_id' => 12, 'supplier_id' => 3, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 50],
            ['barang_id' => 13, 'supplier_id' => 3, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 75],
            ['barang_id' => 14, 'supplier_id' => 3, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 100],
            ['barang_id' => 15, 'supplier_id' => 3, 'user_id' => 3, 'stok_tanggal' => $tanggal, 'stok_jumlah' => 100],
        ];
        DB::table('t_stok')->insert($data);
    }
}