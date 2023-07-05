<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Packages extends Model
{
    use HasFactory;
    public $primaryKey='id';
    protected $table ='packages';
    protected $fillable = [
        'package_name','package_code', 'package_desc', 'img', 'comunity_id'
    ];
    public function comunity(){
        return $this->belongsTo(Comunity::class);
    }
}
