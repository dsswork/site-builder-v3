<?php

namespace App\Models;

use App\Traits\HasBlocksTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\MorphToMany;
use Illuminate\Support\Collection;

/**
 * @property string meta_title
 * @property string meta_description
 * @property string meta_keywords
 * @property string meta_image
 *
 * @property Collection|null showBlocks
 */
class Page extends Model
{
    use HasFactory;
    use HasBlocksTrait;

    protected $fillable = [
        'name',
        'path',
        'show',
        'meta_title',
        'meta_description',
        'meta_keywords',
        'meta_image',
    ];

    public function tags(): MorphToMany
    {
        return $this->morphToMany(Tag::class, 'taggable');
    }
}
