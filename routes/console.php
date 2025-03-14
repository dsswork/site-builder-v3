<?php

use App\Http\Services\BackupService;
use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Schedule;

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote')->hourly();

//Schedule::call(function (BackupService $service) {
//    $service->create(['name' => 'Daily backup']);
//})->daily();
Schedule::call(function () {
    Log::info('Test info ' . now()->toString());
})->everyMinute();

