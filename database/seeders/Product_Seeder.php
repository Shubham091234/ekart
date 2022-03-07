<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class Product_Seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('products')->insert([
            [
             'name'=>'Maruti Suzuki',
             'price'=>"34000$",
             'description'=>'Electrionic car',
             'category'=>'cars',
             'gallery'=>'https://stimg.cardekho.com/images/carexteriorimages/630x420/Maruti/Ertiga/7047/1644833069550/front-left-side-47.jpg?tr=w-456'
            ],
 
            [
             'name'=>'Sony Headphone',
             'price'=>"30$",
             'description'=>'High bass headphones',
             'category'=>'Audio',
             'gallery'=>'https://stimg.cardekho.com/images/carexteriorimages/630x420/Maruti/Ertiga/7047/1644833069550/front-left-side-47.jpg?tr=w-456'
            ],

            [
             'name'=>'HP Laptop',
             'price'=>"231$",
             'description'=>'8Gb SSD Ram with touch',
             'category'=>'Laptops',
             'gallery'=>'https://rukminim1.flixcart.com/image/416/416/kzfvzww0/computer/r/g/i/hp-laptop-15s-eq2144au-amd-ryzen-5-5500u-8gb-ddr4-512-gb-pcie-original-imagbg5jctdf4xwf.jpeg?q=70'
            ],
            [
                'name'=>'Maruti Suzuki',
                'price'=>"34000$",
                'description'=>'Electrionic car',
                'category'=>'cars',
                'gallery'=>'https://stimg.cardekho.com/images/carexteriorimages/630x420/Maruti/Ertiga/7047/1644833069550/front-left-side-47.jpg?tr=w-456'
               ],
 
            [
             'name'=>'MI TV',
             'price'=>"800$",
             'description'=>'Slimmest TV ever',
             'category'=>'Television',
             'gallery'=>'https://rukminim1.flixcart.com/image/416/416/kihqz680/television/j/y/m/infinix-32x1-original-imafya2wwks6cvqz.jpeg?q=70'
            ]
             
         ]);
     
    }
}
