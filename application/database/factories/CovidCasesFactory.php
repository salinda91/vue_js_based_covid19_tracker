<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(\App\CovidCase::class, function (Faker $faker) {
    return [
        'date'=>$faker->dateTimeBetween($startDate = '-5 years', $endDate = 'now', $timezone = null),
        'confirm_cases'=>$faker->randomDigit,
        'deaths'=>$faker->randomDigit,
        'recovered'=>$faker->randomDigit,
        'suspected'=>$faker->randomDigit,
        'country'=>'lk'
    ];
});
