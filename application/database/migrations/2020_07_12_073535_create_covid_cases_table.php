<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCovidCasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('covid_cases', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->date('date');
            $table->integer('confirm_cases')->default(0);
            $table->integer('deaths')->default(0);
            $table->integer('recovered')->default(0);
            $table->integer('suspected')->default(0);
            $table->string('country')->default('LK');
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
        Schema::dropIfExists('covid_cases');
    }
}
