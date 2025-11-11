<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $data = [
            
            [
                'kategori_id' => 1, 
                'barang_kode' => 'BRG001',
                'barang_nama' => 'Laptop ASUS ROG',
                'harga_beli' => 15000000,
                'harga_jual' => 16500000,
            ],
            [
                'kategori_id' => 1, 
                'barang_kode' => 'BRG002',
                'barang_nama' => 'Mouse Logitech G502',
                'harga_beli' => 800000,
                'harga_jual' => 950000,
            ],
            [
                'kategori_id' => 1, 
                'barang_kode' => 'BRG003',
                'barang_nama' => 'Keyboard Keychron K2',
                'harga_beli' => 1200000,
                'harga_jual' => 1400000,
            ],

            
            [
                'kategori_id' => 2, 
                'barang_kode' => 'BRG004',
                'barang_nama' => 'Kemeja Pria Uniqlo',
                'harga_beli' => 250000,
                'harga_jual' => 350000,
            ],
            [
                'kategori_id' => 2, 
                'barang_kode' => 'BRG005',
                'barang_nama' => 'Celana Jeans Levis',
                'harga_beli' => 600000,
                'harga_jual' => 750000,
            ],
            [
                'kategori_id' => 2, 
                'barang_kode' => 'BRG006',
                'barang_nama' => 'Jaket H&M',
                'harga_beli' => 450000,
                'harga_jual' => 550000,
            ],

            
            [
                'kategori_id' => 3, 
                'barang_kode' => 'BRG007',
                'barang_nama' => 'Buku Tulis Sinar Dunia (1 pack)',
                'harga_beli' => 35000,
                'harga_jual' => 45000,
            ],
            [
                'kategori_id' => 3, 
                'barang_kode' => 'BRG008',
                'barang_nama' => 'Pulpen Pilot G2 (1 lusin)',
                'harga_beli' => 150000,
                'harga_jual' => 180000,
            ],
            [
                'kategori_id' => 3, 
                'barang_kode' => 'BRG009',
                'barang_nama' => 'Kertas A4 Sidu (1 rim)',
                'harga_beli' => 40000,
                'harga_jual' => 50000,
            ],

            
            [
                'kategori_id' => 4, 
                'barang_kode' => 'BRG010',
                'barang_nama' => 'Indomie Goreng (1 karton)',
                'harga_beli' => 110000,
                'harga_jual' => 125000,
            ],
            [
                'kategori_id' => 4, 
                'barang_kode' => 'BRG011',
                'barang_nama' => 'Beras Sania 5kg',
                'harga_beli' => 65000,
                'harga_jual' => 72000,
            ],
            [
                'kategori_id' => 4, 
                'barang_kode' => 'BRG012',
                'barang_nama' => 'Minyak Goreng Bimoli 2L',
                'harga_beli' => 38000,
                'harga_jual' => 43000,
            ],

            
            [
                'kategori_id' => 5, 
                'barang_kode' => 'BRG013',
                'barang_nama' => 'Coca-Cola 1.5L (1 dus)',
                'harga_beli' => 180000,
                'harga_jual' => 200000,
            ],
            [
                'kategori_id' => 5, 
                'barang_kode' => 'BRG014',
                'barang_nama' => 'Teh Kotak (1 karton)',
                'harga_beli' => 70000,
                'harga_jual' => 85000,
            ],
            [
                'kategori_id' => 5, 
                'barang_kode' => 'BRG015',
                'barang_nama' => 'Kopi Kapal Api Special (1 pack)',
                'harga_beli' => 25000,
                'harga_jual' => 30000,
            ],
        ];
        DB::table('m_barang')->insert($data);
    }
}