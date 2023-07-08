<?php

namespace Database\Seeders;

use App\Models\Student;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('students')->delete();

        $date = [
            [
                'name' => ['ar' => 'محمد ايمن', 'en' => 'Mohamed Ayman'],
                'email' => 'mohamed@gmail.com',
                'password' => bcrypt('123'),
                'birth_day' => '2001-03-10',
                'academic_year' => '2023',
                'grade_id' => '1',
                'classroom_id' => '3',
                'section_id' => '3',
                'gender_id' => '1',
                'nationalitie_id' => '64',
                'blood_id' => '4',
                'guardian_id' => '1',
            ],
            [
                'name' => ['ar' => 'احمد ايمن', 'en' => 'Ahmed Ayman'],
                'email' => 'ahmed@gmail.com',
                'password' => bcrypt('123'),
                'birth_day' => '1990-03-10',
                'academic_year' => '2023',
                'grade_id' => '1',
                'classroom_id' => '2',
                'section_id' => '2',
                'gender_id' => '1',
                'nationalitie_id' => '64',
                'blood_id' => '4',
                'guardian_id' => '1',
            ]
        ];

        foreach ($date as $item) {
            Student::create($item);
        }
    }
}
