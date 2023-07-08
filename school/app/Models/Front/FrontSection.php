<?php

namespace App\Models\Front;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class FrontSection extends Model
{
    use HasFactory, HasTranslations;

    public $translatable = ['name', 'description', 'title'];
}
