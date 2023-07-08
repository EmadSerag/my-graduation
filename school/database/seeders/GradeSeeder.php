<?php

namespace Database\Seeders;

use App\Models\Grade;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GradeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('grades')->delete();

        $data = [
            ['name'=>['ar'=>'الهندسة المدنية','en'=>'Civil Engineering'] ],
            ['name'=>['ar'=>'الهندسة النووية','en'=>'Nuclear Engineering'] ],
            ['name'=>['ar'=>'هندسة الفضاء','en'=>'Aerospace Engineering'] ],
            ['name'=>['ar'=>'الهندسة الكيميائية','en'=>'Chemical Engineering'] ],
            ['name'=>['ar'=>'الهندسة الصناعية','en'=>'Industrial Engineering'] ],
            ['name'=>['ar'=>'الهندسة الانشائية','en'=>'Structural Engineering'] ],
            ['name'=>['ar'=>'الهندسة الكهربائية','en'=>'Electrical Engineering'] ],
            ['name'=>['ar'=>'هندسة العمارة','en'=>'Architectural Engineering'] ],
            ['name'=>['ar'=>'هندسة البيئة','en'=>'Environmental Engineering'] ],
            ['name'=>['ar'=>'الهندسة الميكانيكية','en'=>'Mechanical Engineering'] ],
            ['name'=>['ar'=>'الهندسة الطبية الحيوية','en'=>'Biomedical Engineering'] ],
            ['name'=>['ar'=>'هندسة البترول والغاز الطبيعي','en'=>'Petroleum and Natural Gas Engineering'] ],
            ['name'=>['ar'=>'هندسة البرمجيات','en'=>'Software Engineering'], ],
            ['name'=>['ar'=>'هندسة الروبوتات','en'=>'Robotics'], ],
            ['name'=>['ar'=>'هندسة الطاقة المتجددة والطاقة البديلة','en'=>'Renewable and Alternative Energy Engineering'] ],
            ['name'=>['ar'=>'هندسة الحاسوب','en'=>'Computer Engineering'] ],
            ['name'=>['ar'=>'هندسة الميكاترونيكس','en'=>'Mechatronics Engineering'] ],
            ['name'=>['ar'=>'الهندسة الزراعية','en'=>'Agriculture'] ],
        ];

        foreach ($data as $item) {
            Grade::create($item);
        }
    }
}
