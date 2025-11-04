<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/hello', function () {
    return "Hello World";
});

Route::get('/about', function () {
    return "NIM = 23.51.0023, NAMA = Maftuh Al Haq";
});

Route::get('/user/{name}', function ($name) {
    return "Nama saya " . $name;
});

Route::get('/post/{post}/comments/{comment}', function ($post, $comment) {
    return "Pos ke-" . $post . " Komentar ke-" . $comment;
});

Route::get('/user/{name?}', function ($name = null) {
    return 'Nama saya ' . $name;
});

Route::get('/user/{name?}', function ($name = 'John') {
    return 'Nama saya ' . $name;
});























//