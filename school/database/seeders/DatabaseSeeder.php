<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();
        $this->call([
            BloodSeeder::class,
            NationalitieSeeder::class,
            ReligionSeeder::class,
            specializationSeeder::class,
            GenderSeeder::class,
            FeeTypeSeeder::class,
            SettingSeeder::class,
            UserSeeder::class,
            GradeSeeder::class,
            ClassroomSeeder::class,
            GuardianSeeder::class,
            TeacherSeeder::class,
            SectionSeeder::class,
            StudentSeeder::class,
        ]);

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
