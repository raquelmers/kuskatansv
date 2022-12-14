<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Eloquent::unguard();

            //disable foreign key check for this connection before running seeders
            DB::statement( 'SET FOREIGN_KEY_CHECKS=0;' );

            $this->call(BusSeeder::class);

            // supposed to only apply to a single connection and reset it's self
            // undo what is done for clarity
            DB::statement( 'SET FOREIGN_KEY_CHECKS=1;' );

            Eloquent::reguard();
    }
}
