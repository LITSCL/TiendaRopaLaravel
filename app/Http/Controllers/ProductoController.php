<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Producto;
use App\Models\Categoria;

class ProductoController extends Controller
{
    //Métodos Vista (Retornan vistas).
    public function crear()
    {
        //1. Establecer las variables necesarias para la vista.
        $categoria = new Categoria();
        $categorias = $categoria::all();
        
        //2. Retornar la vista con las variables.
        return view("models.producto.crear", ["categorias" => $categorias]);
    }
    //Métodos Acción (Procesan datos desde formularios).
}
