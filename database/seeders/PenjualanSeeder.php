<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB; // <-- PENTING
use Carbon\Carbon; // <-- PENTING untuk tanggal

class PenjualanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        // Tanggal untuk data transaksi
        $tanggal = Carbon::now();

        $data = [
            // Transaksi 1
            [
                'user_id' => 3, // Diinput oleh Staff/Kasir (ID 3)
                'pembeli' => 'Budi Santoso',
                'penjualan_kode' => 'PJL001',
                'penjualan_tanggal' => $tanggal->subDays(1), // Transaksi kemarin
            ],
            // Transaksi 2
            [
                'user_id' => 3,
                'pembeli' => 'Citra Lestari',
                'penjualan_kode' => 'PJL002',
                'penjualan_tanggal' => $tanggal->subDays(1), // Transaksi kemarin
            ],
            // Transaksi 3
            [
                'user_id' => 3,
                'pembeli' => 'Doni Firmansyah',
                'penjualan_kode' => 'PJL003',
                'penjualan_tanggal' => $tanggal->subHours(5), // Transaksi hari ini 5 jam lalu
            ],
            // Transaksi 4
            [
                'user_id' => 3,
                'pembeli' => 'Eka Putri',
                'penjualan_kode' => 'PJL004',
                'penjualan_tanggal' => $tanggal->subHours(4),
            ],
            // Transaksi 5
            [
                'user_id' => 3,
                'pembeli' => 'Fajar Nugroho',
                'penjualan_kode' => 'PJL005',
                'penjualan_tanggal' => $tanggal->subHours(3),
            ],
            // Transaksi 6
            [
                'user_id' => 3,
                'pembeli' => 'Gita Permata',
                'penjualan_kode' => 'PJL006',
                'penjualan_tanggal' => $tanggal->subHours(2),
            ],
            // Transaksi 7
            [
                'user_id' => 3,
                'pembeli' => 'Hadi Wibowo',
                'penjualan_kode' => 'PJL007',
                'penjualan_tanggal' => $tanggal->subHours(1),
            ],
            // Transaksi 8
            [
                'user_id' => 3,
                'pembeli' => 'Indah Cahyani',
                'penjualan_kode' => 'PJL008',
                'penjualan_tanggal' => $tanggal->subMinutes(30), // 30 menit lalu
            ],
            // Transaksi 9
            [
                'user_id' => 3,
                'pembeli' => 'Joko Susilo',
                'penjualan_kode' => 'PJL009',
                'penjualan_tanggal' => $tanggal->subMinutes(10), // 10 menit lalu
            ],
            // Transaksi 10
            [
                'user_id' => 3,
                'pembeli' => 'Kania Dewi',
                'penjualan_kode' => 'PJL010',
                'penjualan_tanggal' => $tanggal, // Tepat sekarang
            ],
        ];
        DB::table('t_penjualan')->insert($data);
    }
}