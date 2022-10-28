<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('arrivals', function (Blueprint $table) {
            $table->id('id');
            $table->unsignedBigInteger('idDeparture');
            $table->foreign('idDeparture')->references('id')->on('departures')->onDelete('cascade');
            $table->string('arrivalPlace',50);
            $table->date('arrivalDate');
            $table->time('arrivalTime');
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
        Schema::dropIfExists('arrivals');
    }
};
