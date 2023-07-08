<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Front\FrontSubject;
use Illuminate\Http\Request;

class SubjectController extends Controller
{
    public function show($id) {
        $data = FrontSubject::where('front_section_id', $id)->get();
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
