<?php

namespace App\Models;

use App\Traits\HasBlocksTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property Block|null showBlock
 */
class Menu extends Model
{
    use HasFactory;
    use HasBlocksTrait;

    protected $fillable = [
        'name',
        'show',
    ];
}
