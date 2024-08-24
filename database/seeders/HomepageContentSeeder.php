<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\HomepageContent;


class HomepageContentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       
        HomepageContent::create([
            'spec_of_resort'           => 'Specification of resort sample text.',
            'spec_of_resort_1_img'     => 'images/qg2wmZvpslLGH8wqYO5TXv4NIRtgJRpBQfF6hjOR.jpg',
            'spec_of_resort_1_content' => 'Content for resort image 1.',
            'spec_of_resort_2_img'     => 'images/7sCNP618Su7Bzk6ga5ga32sfHswG2IdjpAv8AOL1.jpg',
            'spec_of_resort_2_content' => 'Content for resort image 2.',
            'spec_of_resort_3_img'     => 'images/k0KAzF88zNSXBxVEXQnHOm0IcrAXcyNTGln9wSaH.jpg',
            'spec_of_resort_3_content' => 'Content for resort image 3.',
            'virtual_link'             => 'https://www.youtube.com/watch?v=48uPk1SA37Y',
            'virtual_img'             => 'images/video-bg.png',
            'virtual_count_1' => '712',
            'virtual_text_1' => 'NEW FRIENDSHIPS',
            'virtual_count_2' => '254',
            'virtual_text_2' => 'INTERNATIONAL',
            'virtual_count_3' => '430',
            'virtual_text_3' => 'FIVE STARS',
            'virtual_count_4' => '782',
            'virtual_text_4' => 'SERVED',
        ]);
    }
}
