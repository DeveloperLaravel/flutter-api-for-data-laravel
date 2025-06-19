<?php

use App\Http\Controllers\HomeDataController;
use Illuminate\Support\Facades\Route;

Route::apiResource('/home', HomeDataController::class);