<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class CovidCase extends Model
{
    public static function getAllCounts()
    {
        return DB::table('covid_cases')
            ->select(DB::raw('SUM(confirm_cases) as all_confirm_cases'),
                DB::raw('SUM(deaths) as all_deaths'),
                DB::raw('SUM(recovered) as all_recovered'),
                DB::raw('SUM(suspected) as all_suspected'))
            ->get();
    }

    public static function getTodayCounts()
    {
        return CovidCase::whereDate('date', Carbon::now()->format('Y-m-d'))->first();
    }
}
