<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LongTruckParking extends Model
{
    use HasFactory;
    protected $table = 'long_truck_parking';
    
     // Define the fillable fields
    protected $fillable = [
        'picture',
        'title',
        'description',
        'number',
        'location',
    ];

}
