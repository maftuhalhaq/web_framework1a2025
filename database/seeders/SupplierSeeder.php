<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SupplierSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $data = [
            [
                'supplier_kode' => 'SPL001',
                'supplier_nama' => 'PT Elektronik Jaya',
                'supplier_alamat' => 'Jl. Elektronik No. 1, Jakarta',
            ],
            [
                'supplier_kode' => 'SPL002',
                'supplier_nama' => 'CV Pangan Makmur',
                'supplier_alamat' => 'Jl. Pangan No. 2, Surabaya',
            ],
            [
                'supplier_kode' => 'SPL003',
                'supplier_nama' => 'Toko ATK Bersama',
                'supplier_alamat' => 'Jl. ATK No. 3, Bandung',
            ],
        ];
        DB::table('m_supplier')->insert($data);
    }
}