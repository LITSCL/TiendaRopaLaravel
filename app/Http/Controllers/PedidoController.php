<?php

namespace App\Http\Controllers;
use App\Models\Pedido;

use Illuminate\Http\Request;

class PedidoController extends Controller
{
    //Métodos Vista (Retornan vistas).
    public function hacer()
    {
        return view("models.pedido.hacer");
    }
    //Métodos Acción (Procesan datos desde formularios).
}
