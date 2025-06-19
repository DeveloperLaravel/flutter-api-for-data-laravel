<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class HomeData extends Model
{
    use HasFactory;

    protected $table = 'home_data';
    public $guarded = ['id'];
}
