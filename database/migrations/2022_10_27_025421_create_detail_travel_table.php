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
        Schema::create('detail_travel', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('idTicket');
            $table->foreign('idTicket')->references('id')->on('tickets')->onDelete('cascade');
            $table->unsignedBigInteger('idTravel');
            $table->foreign('idTravel')->references('id')->on('travel')->onDelete('cascade');
            $table->unsignedBigInteger('idBus');
            $table->foreign('idBus')->references('id')->on('buses')->onDelete('cascade');
            $table->unsignedBigInteger('idDeparture');
            $table->foreign('idDeparture')->references('id')->on('departures')->onDelete('cascade');
            $table->unsignedBigInteger('idArrivals');
            $table->foreign('idArrivals')->references('id')->on('arrivals')->onDelete('cascade');
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
        Schema::dropIfExists('detail_travel');
    }
};
