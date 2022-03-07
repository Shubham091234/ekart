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
                'name'=>'Boat Headphones',
                'price'=>"100$",
                'description'=>'Super Bass Headphones',
                'category'=>'Sounds',
                'gallery'=>'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.in%2FBoat-Rockerz-400-Bluetooth-Headphones%2Fdp%2FB01J82IYLW&psig=AOvVaw2_EE_-KOadnya1_gh-dkju&ust=1646770480418000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNChiKLotPYCFQAAAAAdAAAAABAD',
               ],
    
               [
               'name'=>'Nikon Camera',
               'price'=>"200$",
               'description'=>'Ultra HD Camera',
               'category'=>'Photos',
               'gallery'=>'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.techradar.com%2Fin%2Fnews%2Fbest-full-frame-camera&psig=AOvVaw0tT1bJDib7PFu08rTM6-5a&ust=1646770163444000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMCSvozntPYCFQAAAAAdAAAAABAD'
            
               ],
               [
                   'name'=>'Puma T-Shirt',
                   'price'=>"20$",
                   'description'=>'Branded Soft and comfy T-shirt',
                   'category'=>'clothes',
                   'gallery'=>'https://in.puma.com/in/en/pd/italia-graphic-winner-mens-t-shirt/769990.html?dwvar_769990_color=01#',
                  ],
                  [
                   'name'=>'I-Phone mini',
                   'price'=>"300$",
                   'description'=>'Secured and safe Phone',
                   'category'=>'Phones',
                   'gallery'=>'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vodafone.co.uk%2Fmobile%2Fbest-for%2Fsmall-phones&psig=AOvVaw2LrwyxzjrI3v_tcnfbv22_&ust=1646770611427000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDs0uTotPYCFQAAAAAdAAAAABAD'
                  ],
                  [
                   'name'=>'Skybags',
                   'price'=>"50$",
                   'description'=>'Heavy Duty bag',
                   'category'=>'Bags',
                   'gallery'=>'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.skybags.co.in%2F&psig=AOvVaw0DfhIe0q_wDstwBGDWu8qx&ust=1646770689612000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNiKx4PptPYCFQAAAAAdAAAAABAD'
                  ],
           ]);
        
       }
       }
   
   