<?php

namespace Database\Seeders;

use App\Models\Classroom;
use App\Models\Grade;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassroomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('classrooms')->delete();
        $data = [
            // 1
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 1,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 1,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 1,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 1,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 1,
            ],
            // 2
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 2,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 2,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 2,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 2,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 2,
            ],
            // 3
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 3,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 3,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 3,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 3,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 3,
            ],
            // 4
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 4,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 4,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 4,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 4,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 4,
            ],
            // 5
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 5,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 5,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 5,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 5,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 5,
            ],
            // 6
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 6,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 6,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 6,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 6,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 6,
            ],
            // 7
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 7,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 7,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 7,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 7,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 7,
            ],
            // 8
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 8,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 8,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 8,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 8,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 8,
            ],
            // 9
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 9,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 9,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 9,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 9,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 9,
            ],
            // 10
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 10,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 10,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 10,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 10,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 10,
            ],
            // 11
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 11,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 11,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 11,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 11,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 11,
            ],
            // 12
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 12,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 12,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 12,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 12,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 12,
            ],
            // 13
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 13,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 13,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 13,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 13,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 13,
            ],
            // 14
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 14,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 14,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 14,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 14,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 14,
            ],
            // 15
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 15,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 15,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 15,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 15,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 15,
            ],
            // 16
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 16,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 16,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 16,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 16,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 16,
            ],
            // 17
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 17,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 17,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 17,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 17,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 17,
            ],
            // 18
            [
                'class_name' => ['ar' => 'الفرقة الاولي', 'en' => 'The first group'],
                'grade_id' => 18,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثانية', 'en' => 'The second group'],
                'grade_id' => 18,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الثالثة', 'en' => 'The third group'],
                'grade_id' => 18,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الرابعة', 'en' => 'The fourth group'],
                'grade_id' => 18,
            ],
            [
                'class_name' => ['ar' => 'الفرقة الخامسة', 'en' => 'The fifth group'],
                'grade_id' => 18,
            ],
        ];

        foreach ($data as $item) {
            Classroom::create($item);
        }

    }
}
