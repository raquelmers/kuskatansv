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
        Schema::create('tickets', function (Blueprint $table) {
            //idticket
            $table->id('id');
            //idtravel
            $table->unsignedBigInteger('idTravel');
            //idtravel      idtravel
            $table->foreign('idTravel')->references('id')->on('travel')->onDelete('cascade');
            $table->double('fareChildren', 4, 2);
            $table->double('fareAdult', 4, 2);
            $table->timestamps();
        });

        Schema::table('tickets', function (Blueprint $table) {

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tickets');
    }
};
