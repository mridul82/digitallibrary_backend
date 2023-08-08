<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContentDetail extends Model
{
    use HasFactory;

    protected $fillable = ['content_id', 'filename', 'file_url', 'file_thumbnail', 'file_watermark', 'isWatermark', 'isPublish', 'publishAt'];

    public function content()
    {
        return $this->belongsTo(Content::class, 'class_id');

    }
}
