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
        Schema::create('m_barang', function (Blueprint $table) {
            $table->increments('barang_id');

            // kategori_id (FK) int
            // Kita gunakan unsignedInteger untuk foreign key
            $table->unsignedInteger('kategori_id');

            // barang_kode string(10)
            $table->string('barang_kode', 10);

            // barang_nama string(100)
            $table->string('barang_nama', 100);

            // harga_beli int
            $table->integer('harga_beli');

            // harga_jual int
            $table->integer('harga_jual');

            // timestamps() dihapus karena tidak ada di gambar

            // MENAMBAHKAN FOREIGN KEY
            // Relasi ke m_kategori (tabel) -> kategori_id (kolom)
            $table->foreign('kategori_id')->references('kategori_id')->on('m_kategori');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('m_barang');
    }
};