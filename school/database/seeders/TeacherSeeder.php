<?php

namespace Database\Seeders;

use App\Models\Teacher;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TeacherSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('teachers')->delete();

        $data = [
            [
                'name' => ['ar' => 'خالد', 'en' => 'Khaled'],
                'address' => ['ar' => 'القاهرة', 'en' => 'Cairo'],
                'email' => 'khaled@gmail.com',
                'password' => bcrypt('123'),
                'joining_date' => now(),
                'specialization_id' => '1',
                'gender_id' => '1'
            ],
            [
                'name' => ['ar' => 'صلاح', 'en' => 'Salah'],
                'address' => ['ar' => 'القاهرة', 'en' => 'Cairo'],
                'email' => 'salah@gmail.com',
                'password' => bcrypt('123'),
                'joining_date' => now(),
                'specialization_id' => '2',
                'gender_id' => '1'
            ],
            [
                'name' => ['ar' => 'احمد', 'en' => 'Ahmed'],
                'address' => ['ar' => 'القاهرة', 'en' => 'Cairo'],
                'email' => 'ahmed@gmail.com',
                'password' => bcrypt('123'),
                'joining_date' => now(),
                'specialization_id' => '3',
                'gender_id' => '1'
            ],
            [
                'name' => ['ar' => 'محمد', 'en' => 'Mohamed'],
                'address' => ['ar' => 'القاهرة', 'en' => 'Cairo'],
                'email' => 'mohamed@gmail.com',
                'password' => bcrypt('123'),
                'joining_date' => now(),
                'specialization_id' => '4',
                'gender_id' => '1'
            ],
            [
                'name' => ['ar' => 'منصور', 'en' => 'mansour'],
                'address' => ['ar' => 'القاهرة', 'en' => 'Cairo'],
                'email' => 'mansour@gmail.com',
                'password' => bcrypt('123'),
                'joining_date' => now(),
                'specialization_id' => '5',
                'gender_id' => '1'
            ],
        ];

        foreach ($data as $item) {
            Teacher::create($item);
        }
    }
}
