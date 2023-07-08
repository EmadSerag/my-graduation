<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->delete();

        $data = [
            'name' => 'admin',
            'email' => 'admin@admin.com',
            'password' => bcrypt('admin')
        ];

        User::create($data);
    }
}
