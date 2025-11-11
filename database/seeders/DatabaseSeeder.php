<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents; // Bisa dihapus jika tidak dipakai
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Daftarkan semua seeder kustom di sini
        // Pastikan urutannya benar (Induk/Parent table dulu)

        $this->call([
                // INDUK (tidak bergantung pada tabel lain)
            LevelSeeder::class,
            KategoriSeeder::class,
            SupplierSeeder::class,

                // ANAK (bergantung pada tabel di atas)
            UserSeeder::class,      // <-- Butuh LevelSeeder
            BarangSeeder::class,    // <-- Butuh KategoriSeeder

                // Seeder lain akan ditambahkan di sini nanti
                // (Contoh: StokSeeder, PenjualanSeeder, dll.)
            StokSeeder::class,
            PenjualanSeeder::class,
            PenjualanDetailSeeder::class,
        ]);
    }
}