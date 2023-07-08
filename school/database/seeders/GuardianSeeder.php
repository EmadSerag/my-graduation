<?php

namespace Database\Seeders;

use App\Models\Guardian;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GuardianSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('guardians')->delete();

        $data = [
            [
                'name' => ['ar' => 'ايمن يوسف', 'en' => 'Ayman Youssef'],
                'email' => 'ayman@gmail.com',
                'address' => ['ar' => 'القاهرة', 'en' => 'Cairo'],
                'password' => bcrypt('123'),
                'job' => ['ar' => 'مهندس برمجيات', 'en' => 'Software Engineering'],
                'phone' => '01234567890',
                'national_id' => '123456789123456',
                'nationalitie_id' => '64',
                'blood_id' => '4',
                'religion_id' => '1'
            ],
            [
                'name' => ['ar' => 'صلاح محمود', 'en' => 'Salah Mahmoud'],
                'email' => 'salah@gmail.com',
                'address' => ['ar' => 'القاهرة', 'en' => 'Cairo'],
                'password' => bcrypt('123'),
                'job' => ['ar' => 'مهندس برمجيات', 'en' => 'Software Engineering'],
                'phone' => '01234567890',
                'national_id' => '123456789123456',
                'nationalitie_id' => '64',
                'blood_id' => '4',
                'religion_id' => '1'
            ],
            [
                'name' => ['ar' => 'طارق احمد', 'en' => 'Tarek Ahmed'],
                'email' => 'tarek@gmail.com',
                'address' => ['ar' => 'القاهرة', 'en' => 'Cairo'],
                'password' => bcrypt('123'),
                'job' => ['ar' => 'مهندس برمجيات', 'en' => 'Software Engineering'],
                'phone' => '01234567890',
                'national_id' => '123456789123456',
                'nationalitie_id' => '64',
                'blood_id' => '4',
                'religion_id' => '1'
            ],
        ];

        foreach ($data as $item) {
            Guardian::create($item);
        }
    }
}
