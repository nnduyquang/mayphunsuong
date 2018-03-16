<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class HomepageServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer(
            '*',
            'App\Http\ViewComposers\SidebarComposer'
        );
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
