<?php

namespace Database\Seeders;

use App\Models\Section;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SectionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('sections')->delete();

        $data = [
            [
                'section_name' => ['ar' => 'أ', 'en' => 'A'],
                'status' => 1,
                'grade_id' => 1,
                'classroom_id' => 1
            ],
            [
                'section_name' => ['ar' => 'ب', 'en' => 'B'],
                'status' => 1,
                'grade_id' => 1,
                'classroom_id' => 2
            ],[
                'section_name' => ['ar' => 'أ', 'en' => 'A'],
                'status' => 1,
                'grade_id' => 1,
                'classroom_id' => 3
            ],
            [
                'section_name' => ['ar' => 'ب', 'en' => 'B'],
                'status' => 1,
                'grade_id' => 1,
                'classroom_id' => 4
            ],
            [
                'section_name' => ['ar' => 'ب', 'en' => 'B'],
                'status' => 1,
                'grade_id' => 1,
                'classroom_id' => 5
            ],
            [
                'section_name' => ['ar' => 'أ', 'en' => 'A'],
                'status' => 1,
                'grade_id' => 2,
                'classroom_id' => 6
            ],
            [
                'section_name' => ['ar' => 'ب', 'en' => 'B'],
                'status' => 1,
                'grade_id' => 2,
                'classroom_id' => 7
            ],[
                'section_name' => ['ar' => 'أ', 'en' => 'A'],
                'status' => 1,
                'grade_id' => 2,
                'classroom_id' => 8
            ],
            [
                'section_name' => ['ar' => 'س', 'en' => 'C'],
                'status' => 1,
                'grade_id' => 2,
                'classroom_id' => 9
            ],
            [
                'section_name' => ['ar' => 'س', 'en' => 'C'],
                'status' => 1,
                'grade_id' => 2,
                'classroom_id' => 10
            ],
            [
                'section_name' => ['ar' => 'س', 'en' => 'C'],
                'status' => 1,
                'grade_id' => 3,
                'classroom_id' => 11
            ],
            [
                'section_name' => ['ar' => 'ب', 'en' => 'B'],
                'status' => 1,
                'grade_id' => 3,
                'classroom_id' => 12
            ],[
                'section_name' => ['ar' => 'أ', 'en' => 'A'],
                'status' => 1,
                'grade_id' => 3,
                'classroom_id' => 12
            ],
            [
                'section_name' => ['ar' => 'س', 'en' => 'C'],
                'status' => 1,
                'grade_id' => 3,
                'classroom_id' => 14
            ],
            [
                'section_name' => ['ar' => 'س', 'en' => 'C'],
                'status' => 1,
                'grade_id' => 3,
                'classroom_id' => 15
            ],
        ];

        foreach ($data as $item) {
            Section::create($item);
        }
    }
}
