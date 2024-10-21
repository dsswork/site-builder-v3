<?php

namespace App\Traits;

use App\Models\Block;
use Illuminate\Database\Eloquent\Relations\MorphMany;
use Illuminate\Database\Eloquent\Relations\MorphOne;

trait HasBlocksTrait
{
    public function blocks(): MorphMany
    {
        return $this->morphMany(Block::class, 'blockable')
            ->orderBy('sort');
    }

    public function showBlocks(): MorphMany
    {
        return $this->morphMany(Block::class, 'blockable')
            ->where('show', true)
            ->orderBy('sort');
    }

    public function block(): MorphOne
    {
        return $this->blocks()->one()->ofMany();
    }

    public function showBlock(): MorphOne
    {
        return $this->showBlocks()->one()->ofMany();
    }
}
