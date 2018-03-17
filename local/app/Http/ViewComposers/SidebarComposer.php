<?php

namespace App\Http\ViewComposers;

use App\Repositories\Frontend\FrontendRepository;
use Illuminate\View\View;

class SidebarComposer
{
    public $sidebar=[];

    /**
     * Create a movie composer.
     *
     * @return void
     */
    public function __construct(FrontendRepository $home)
    {
        $this->sidebar = $home->getAllSidebar();
    }

    /**
     * Bind data to the view.
     *
     * @param  View $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with('sidebar', $this->sidebar);
    }
}