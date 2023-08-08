<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\Content;
use App\Models\ContentDetail;

class TeacherController extends Controller
{
    public function teacherDashboard() {

        //dd('techaer');

        $teacher_id = Auth::user()->id;
        $yvideos = Content::where('cnt_creator',$teacher_id)->orderBy('id', 'desc')->get();


        return response(['user' => Auth::user(), 'content' => $yvideos, 'statusCode' => 200]);

    }

    public function contentDetails($id) {
        //dd($id);
        $content_details = ContentDetail::where('content_id', $id)->first();
       // dd($content_details);
        return response(['contentDetail' => $content_details, 'statusCode' => 200]);
    }
}
