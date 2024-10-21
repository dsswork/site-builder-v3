<?php

namespace App\Models;

use App\Traits\HasBlocksTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Collection;
use OpenApi\Attributes as OA;

#[OA\Schema(
    schema: 'Block',
    properties: [
        new OA\Property(property: "id", type: "integer", example: 3),
        new OA\Property(property: "type", type: "string", example: "top"),
        new OA\Property(property: "fields", type: "array", items: new OA\Items(properties: [])),
        new OA\Property(property: "blocks", type: "array", items: new OA\Items(properties: [])),
    ],
    type: 'object'
)]
/**
 * @property integer block_id
 * @property array fields
 *
 * @property Collection showBlocks
 * @property Template template
 */
class Block extends Model
{
    use HasFactory;
    use HasBlocksTrait;

    protected $fillable = [
        'fields',
        'template_id',
        'block_id',
        'blockable_id',
        'blockable_type',
        'is_general',
        'sort'
    ];

    public function casts(): array
    {
        return [
            'fields' => 'array'
        ];
    }

    public function template(): BelongsTo
    {
        return $this->belongsTo(Template::class);
    }
}
