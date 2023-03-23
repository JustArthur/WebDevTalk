<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        //Créer 5 catégories
        $categories = Category::factory(5)->create();

        //Créer 10 user
        User::factory(10)->create()->each(function ($user) use ($categories){

            //Pour chaque user il créer 1 à 3 posts
            Post::factory(rand(1, 3))->create([

                //Créer le user_id et la catégorie
                'user_id' => $user->id,
                'category_id' => ($categories->random(1)->first())->id
            ]);
        });
    }
}
