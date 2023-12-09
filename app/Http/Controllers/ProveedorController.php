<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Proveedor;

class ProveedorController extends Controller
{
    //Métodos Vista (Retornan vistas).
    public function crear()
    {
        return view("models.proveedor.crear");
    }
    //Métodos Acción (Procesan datos desde formularios).
}
