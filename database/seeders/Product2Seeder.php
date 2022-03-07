<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class Product2Seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products2')->insert([
            [
             'name2'=>'Boat Headphones',
             'price2'=>"100$",
             'description2'=>'Super Bass Headphones',
             'category2'=>'Sounds',
             'gallery2'=>'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.in%2FBoat-Rockerz-400-Bluetooth-Headphones%2Fdp%2FB01J82IYLW&psig=AOvVaw2_EE_-KOadnya1_gh-dkju&ust=1646770480418000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNChiKLotPYCFQAAAAAdAAAAABAD',
            ],
 
            [
            'name2'=>'Nikon Camera',
            'price2'=>"200$",
            'description2'=>'Ultra HD Camera',
            'category2'=>'Photos',
            'gallery2'=>'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.techradar.com%2Fin%2Fnews%2Fbest-full-frame-camera&psig=AOvVaw0tT1bJDib7PFu08rTM6-5a&ust=1646770163444000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMCSvozntPYCFQAAAAAdAAAAABAD'
         
            ],
            [
                'name2'=>'Puma T-Shirt',
                'price2'=>"20$",
                'description2'=>'Branded Soft and comfy T-shirt',
                'category2'=>'clothes',
                'gallery2'=>'https://in.puma.com/in/en/pd/italia-graphic-winner-mens-t-shirt/769990.html?dwvar_769990_color=01#',
               ],
               [
                'name2'=>'I-Phone mini',
                'price2'=>"300$",
                'description2'=>'Secured and safe Phone',
                'category2'=>'Phones',
                'gallery2'=>'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vodafone.co.uk%2Fmobile%2Fbest-for%2Fsmall-phones&psig=AOvVaw2LrwyxzjrI3v_tcnfbv22_&ust=1646770611427000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDs0uTotPYCFQAAAAAdAAAAABAD'
               ],
               [
                'name2'=>'Skybags',
                'price2'=>"50$",
                'description2'=>'Heavy Duty bag',
                'category2'=>'Bags',
                'gallery2'=>'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.skybags.co.in%2F&psig=AOvVaw0DfhIe0q_wDstwBGDWu8qx&ust=1646770689612000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNiKx4PptPYCFQAAAAAdAAAAABAD'
               ],
        ]);
     
    }
    }

