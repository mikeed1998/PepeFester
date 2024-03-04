<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePFSubcategoriaPepesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('p_f_subcategoria_pepes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('categoria');
            $table->string('subcategoria')->nullable();
            $table->text('icono')->nullable();
            $table->text('aux')->nullable();
            $table->foreign('categoria')->references('id')->on('p_f_categoria_pepes')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('p_f_subcategoria_pepes');
    }
}
