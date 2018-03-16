<?php

namespace App\Repositories\Homepage;

use App\Employee;

class HomepageRepository
{
    public function getAllSidebar(){
        $sidebar=[];
        $emps = Employee::where('emp_is_work', '=', '1')->orderBy('emp_order', 'ASC')->get();
        return $emps;
    }
}