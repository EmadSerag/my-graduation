<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('front_sections', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('description', 999);
            $table->string('title', 999);
            $table->text('cover');
            $table->text('image');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('front_sections');
    }
};
