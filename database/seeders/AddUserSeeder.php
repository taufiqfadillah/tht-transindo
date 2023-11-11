<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class AddUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // buat objek user
        $user = new \App\Models\User;
        $user->name = "admin";
        $user->username = "admin";
        $user->email = "admin@gmail.com";
        $user->password = Hash::make('admin');
        $user->level = "admin";
        $user->save();
        $this->command->info("User telah dibuat");

        $user = new \App\Models\User;
        $user->name = "staff";
        $user->username = "staff";
        $user->email = "staff@gmail.com";
        $user->password = Hash::make('admin');
        $user->level = "staff";
        $user->save();
        $this->command->info("User telah dibuat");

        $user = new \App\Models\User;
        $user->name = "user";
        $user->username = "user";
        $user->email = "user@gmail.com";
        $user->password = Hash::make('admin');
        $user->level = "user";
        $user->save();
        $this->command->info("User telah dibuat");
    }
}
