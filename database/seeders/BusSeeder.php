<?php

namespace Database\Seeders;

use App\Models\Bus;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class BusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Bus::unguard();
        $busSqlPath= public_path('table_seeders/bus.sql');
        DB::unprepared(file_get_contents($busSqlPath));
        //DB::unprepared(file_get_contents($path));
        //$this->command->info('Tables seeded');
    }
}
