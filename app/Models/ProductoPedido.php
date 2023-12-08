<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductoPedido extends Model
{
    use HasFactory;
    
    protected $table = "producto_pedido"; //Las variables tienen que estar en inglés.
    protected $primaryKey = "id";
    protected $keyType = "int";
    protected $fillable = ["id", "unidades", "producto_id", "pedido_id", "created_at", "updated_at"];
    
    //1. Creando las relaciones "Many To One" (Muchos a uno), esto permite que el ORM reconozca las relaciones entre las tablas de la base de datos.
    public function getProducto()
    {
        return $this->belongsTo(Producto::class, "producto_id"); //Este método permite traer un registro único de la clave foránea.
    }
    
    //1. Creando las relaciones "Many To One" (Muchos a uno), esto permite que el ORM reconozca las relaciones entre las tablas de la base de datos.
    public function getPedido()
    {
        return $this->belongsTo(Pedido::class, "pedido_id"); //Este método permite traer un registro único de la clave foránea.
    }
}
