<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!

*/

Auth::routes();

Route::get("/", [App\Http\Controllers\HomeController::class, "home"])->name("home");

Route::get("/usuario/editar-perfil", [App\Http\Controllers\UsuarioController::class, "editarPerfil"])->name("usuario.vista.editarPerfil");

Route::get("/categoria/crear", [App\Http\Controllers\CategoriaController::class, "crear"])->name("categoria.vista.crear");

Route::get("/producto/crear", [App\Http\Controllers\ProductoController::class, "crear"])->name("producto.vista.crear");

Route::get("/proveedor/crear", [App\Http\Controllers\ProveedorController::class, "crear"])->name("proveedor.vista.crear");

