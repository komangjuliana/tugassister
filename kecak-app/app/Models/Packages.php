<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Packages extends Model
{
    use HasFactory;
    public $primaryKey='package_id';
    protected $table ='package';
    protected $fillable = [
        'package_code', 'package_name', 'permalink', 'package_desc', 'feature_image', 'location_id', 'comunity_id'
    ];
    public function comunity(){
        return $this->belongsTo(Comunity::class, 'comunity_id', 'comunity_id');
    }
}

