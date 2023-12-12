<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class usersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
                    [
                        'name'=>'admin',
                        'email'=>'admin@gmail.com',
                        'password'=>bcrypt('123456789'),
                    ],  
                     [
                        'name'=>'user',
                        'email'=>'user@gmail.com',
                        'password'=>bcrypt('123456789'),
                    ],  
                     [
                        'name'=>'rasel',
                        'email'=>'rasel@gmail.com',
                        'password'=>bcrypt('123456789'),
                    ], 
                    [
                        'name'=>'rifa',
                        'email'=>'rifa@gmail.com',
                        'password'=>bcrypt('123456789'),
                    ],
                    [
                        'name'=>'sorna',
                        'email'=>'sorna@gmail.com',
                        'password'=>bcrypt('123456789'),
                    ],
            ];
            User::insert($users);
    }
}
