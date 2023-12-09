<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;

class CategoriaController extends Controller
{
	//Métodos Vista (Retornan vistas).
    public function crear()
    {
        return view("models.categoria.crear");
    }
	//Métodos Acción (Procesan datos desde formularios).
}
