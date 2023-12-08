<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    use HasFactory;
    
    protected $table = "pedido";
    protected $primaryKey = "id";
    protected $keyType = "int";
    protected $fillable = ["id", "ciudad", "comuna", "calle", "coste", "estado", "fecha", "hora", "usuario_id", "created_at", "updated_at"];

    public function getUsuario()
    {
        return $this->belongsTo(Usuario::class, "usuario_id");
    }
    
    public function getAllProductoPedido()
    {
        return $this->hasMany(ProductoPedido::class);
    }
}
