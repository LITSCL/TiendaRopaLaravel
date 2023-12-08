<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductoUsuario extends Model
{
    use HasFactory;
    
    protected $table = "producto_usuario";
    protected $primaryKey = "id";
    protected $keyType = "int";
    protected $fillable = ["id", "producto_id", "usuario_id", "created_at", "updated_at"];
    
    public function getProducto()
    {
        return $this->belongsTo(Producto::class, "producto_id");
    }
    
    public function getUsuario()
    {
        return $this->belongsTo(Usuario::class, "usuario_id");
    }
}
