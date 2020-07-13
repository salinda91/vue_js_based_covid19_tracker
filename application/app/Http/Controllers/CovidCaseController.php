<?php

namespace App\Http\Controllers;

use App\CovidCase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CovidCaseController extends Controller
{

    public function allCases()
    {
        $all = CovidCase::orderBy('date', 'DESC')->get();
        $lables = [];
        $datasets = [];
        $all_data = [];

        $confim_cases = [];
        $deaths = [];
        $recoverd = [];
        $suspected = [];

        foreach ($all as $key => $item) {
            $array_item = [];
            array_push($lables, $item->date);

            array_push($confim_cases, $item->confirm_cases);
            array_push($deaths, $item->deaths);
            array_push($recoverd, $item->recovered);
            array_push($suspected, $item->suspected);

        }

        $data_element = [
            'label' => 'Confirm Cases',
            'backgroundColor' => '#b71c1c50',
            'data' => $confim_cases
        ];
        array_push($datasets, $data_element);
        $data_element = [];

        $data_element = [
            'label' => 'Deaths',
            'backgroundColor' => '#26323850',
            'data' => $deaths
        ];
        array_push($datasets, $data_element);
        $data_element = [];

        $data_element = [
            'label' => 'Recovered',
            'backgroundColor' => '#1B5E2050',
            'data' => $recoverd
        ];
        array_push($datasets, $data_element);
        $data_element = [];

        $data_element = [
            'label' => 'Suspected Cases',
            'backgroundColor' => '#FF6F0050',
            'data' => $suspected
        ];
        array_push($datasets, $data_element);
        $data_element = [];

        $all_data['labels'] = $lables;
        $all_data['datasets'] = $datasets;
//        dd($all_data);

        return json_encode($all_data);

    }

    public function allCounts()
    {
        $all_counts = CovidCase::getAllCounts();

        return response()->json([
            'all_counts' => $all_counts[0]
        ]);
    }

    public function todayCounts()
    {
        $today_counts = CovidCase::getTodayCounts();

        return response()->json([
            'today_counts' => $today_counts
        ]);
    }
}
