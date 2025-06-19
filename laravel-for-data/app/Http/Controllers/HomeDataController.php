<?php

namespace App\Http\Controllers;

use App\Models\HomeData;
use Illuminate\Http\Request;

class HomeDataController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
         $users = HomeData::all();

        return $this->success($users, 'Note retrieved successfully.');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(HomeData $homeData)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(HomeData $homeData)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, HomeData $homeData)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(HomeData $homeData)
    {
        //
    }
}
