<?php

namespace App\Repositories\Frontend;

interface FrontendRepositoryInterface
{
    public function getAllSidebar();

    public function getProductByCategory($path);

    public function getServiceByCategory($path);

    public function getAllListCategoryAndProduct();

    public function getProductInfo($categoryPath, $productPath);

    public function getServiceInfo($categoryPath, $servicePath);

    public function getFooterInfo();

    public function getMainPage($path);

    public function getSearch($keySearch);
}