<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Front\FrontSection;
use Illuminate\Http\Request;

class SectionController extends Controller
{
    public function index()
    {
        $data = FrontSection::all();
        if ($data->count() > 0) {
            return response()->json([
                'status' => 200,
                'msg' => 'Success',
                'data' => $data
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'msg' => 'No Data',
                'data' => []
            ]);
        }
    }

    public function show($id)
    {
        $data = FrontSection::findOrFail($id);
        if ($data->count() > 0) {
            return response()->json([
                'status' => 200,
                'msg' => 'Success',
                'data' => $data
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'msg' => 'No Data',
                'data' => []
            ]);
        }
    }

}
