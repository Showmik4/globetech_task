<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->integer('item_id');
            $table->string('title');
            $table->integer('category_id');
            $table->integer('subcategory_id');
            $table->string('nagotiable');
            $table->double('price');
            $table->string('condition');
            $table->string('description');
            $table->integer('min_quantity');
            $table->dateTime('validity');
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
        Schema::dropIfExists('products');
    }
}
