<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::factory()->times(80)->create();

        $products = new Product();
        // $products->title ="titre 1";
        // $products->subtitle ="sous-titre 1";
        // $products->price =10000;
        // $products->image ="https://la1ere.francetvinfo.fr/image/ezPPfVNWanhBjJoG4_n1HlMATaE/930x620/filters:format(webp)/outremer/2021/10/11/616449358335d_jo-dezormo-1799757.jpg";
        // $products->description = "description 1";
    }
}
