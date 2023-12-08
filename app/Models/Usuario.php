<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Usuario extends Authenticatable
{
	use Notifiable;
	
	protected $table = "usuario";
	protected $primaryKey = "id";
	protected $keyType = "int";
	protected $fillable = ["id", "correo", "clave", "tipo", "primer_nombre", "segundo_nombre", "apellido_paterno", "apellido_materno", "imagen", "remember_token", "created_at", "updated_at"];
	
	public function getAuthPassword()
	{
		return $this->clave;
	}
	
	public function getAllPedido()
	{
	    return $this->hasMany(Pedido::class);
	}
	
	public function getAllProductoUsuario()
	{
	    return $this->hasMany(ProductoUsuario::class);
	}
}
