<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Proveedor extends Model
{
    use HasFactory;
    
    protected $table = "proveedor";
    protected $primaryKey = "id";
    protected $keyType = "int";
    protected $fillable = ["id", "nombre", "telefono", "correo", "created_at", "updated_at"];
}
