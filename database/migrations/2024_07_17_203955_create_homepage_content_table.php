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
        Schema::create('homepage_content', function (Blueprint $table) {
            $table->id();
            $table->text('spec_of_resort')->nullable();
            $table->text('spec_of_resort_1_img')->nullable();
            $table->text('spec_of_resort_1_content')->nullable();
            $table->text('spec_of_resort_2_img')->nullable();
            $table->text('spec_of_resort_2_content')->nullable();
            $table->text('spec_of_resort_3_img')->nullable();
            $table->text('spec_of_resort_3_content')->nullable();
            $table->text('virtual_link')->nullable();
            $table->text('virtual_img')->nullable();
            $table->text('virtual_count_1')->nullable();
            $table->text('virtual_text_1')->nullable();
            $table->text('virtual_count_2')->nullable();
            $table->text('virtual_text_2')->nullable();
            $table->text('virtual_count_3')->nullable();
            $table->text('virtual_text_3')->nullable();
            $table->text('virtual_count_4')->nullable();
            $table->text('virtual_text_4')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('homepage_content');
    }
};
