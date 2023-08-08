<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    use HasFactory;

    protected $fillable = ['cnt_class', 'cnt_chapter', 'cnt_subject', 
    'cnt_title','cnt_topic', 'cnt_desc', 'cnt_type', 'cnt_creator', 'cnt_publish', 
    'cnt_publishAt'];
}
