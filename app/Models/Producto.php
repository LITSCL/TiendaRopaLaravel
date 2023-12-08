<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    use HasFactory;
    
    protected $table = "producto";
    protected $primaryKey = "id";
    protected $keyType = "int";
    protected $fillable = ["id", "nombre", "descripcion", "precio", "stock", "imagen", "categoria_id", "created_at", "updated_at"];
    
    public function getCategoria()
    {
    	return $this->belongsTo(Categoria::class, "categoria_id");
    }
    
    public function getAllProductoPedido()
    {
        return $this->hasMany(ProductoPedido::class);
    }
    
    public function getAllProductoUsuario()
    {
        return $this->hasMany(ProductoUsuario::class);
    }
}
