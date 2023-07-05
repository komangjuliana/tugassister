<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comunity extends Model
{
    use HasFactory;
    public $primaryKey='id';
    protected $table ="comunities";
    protected $fillable = [
        'comunity_name',
    ];
    public function packages(){
        return $this->hasMany(Packages::class);
    }
}
