<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('t_penjualan_detail', function (Blueprint $table) {
            $table->increments('detail_id');

            // penjualan_id (FK) int
            // Tipe data INT (sesuai t_penjualan)
            $table->unsignedInteger('penjualan_id');

            // barang_id (FK) int
            // Tipe data INT (sesuai m_barang)
            $table->unsignedInteger('barang_id');

            // harga int
            $table->integer('harga');

            // jumlah int
            $table->integer('jumlah');
            
            // timestamps() dihapus karena tidak ada di gambar

            // --- MENAMBAHKAN FOREIGN KEY CONSTRAINTS ---

            // FK untuk penjualan_id -> t_penjualan(penjualan_id)
            $table->foreign('penjualan_id')->references('penjualan_id')->on('t_penjualan');
            
            // FK untuk barang_id -> m_barang(barang_id)
            $table->foreign('barang_id')->references('barang_id')->on('m_barang');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('t_penjualan_detail');
    }
};