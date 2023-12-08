<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    use HasFactory;
    
    protected $table = "categoria";
    protected $primaryKey = "id";
    protected $keyType = "int";
    protected $fillable = ["id", "nombre", "created_at", "updated_at"];
    
    public function getAllProducto()
    {
    	return $this->hasMany(Producto::class);
    }
}
