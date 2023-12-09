<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Usuario;

class UsuarioController extends Controller
{
    //Métodos Vista (Retornan vistas).
    public function editarPerfil()
    {
        return view("models.usuario.editar_perfil");
    }
    //Métodos Acción (Procesan datos desde formularios).
}
