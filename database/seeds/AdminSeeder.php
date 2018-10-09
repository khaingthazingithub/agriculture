<?php

use Illuminate\Database\Seeder;
use App\User;
class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
        'name'=>'Admin',
        'email'=>'admin123@gmail.com',
        'password'=>bcrypt("admin123"),
        'is_admin'=>true
      ]);
    }
}
