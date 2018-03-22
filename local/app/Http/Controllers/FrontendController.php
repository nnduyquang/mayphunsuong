<?php

namespace App\Http\Controllers;

use App\Repositories\Frontend\FrontendRepositoryInterface;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    protected $frontendRepository;

    public function __construct(FrontendRepositoryInterface $frontendRepository)
    {
        $this->frontendRepository = $frontendRepository;
    }

    public function getProductByCategory($path)
    {
        $data = $this->frontendRepository->getProductByCategory($path);
        return view('frontend.' . $data['categoryProduct']->template, compact('data'));
    }

    public function getServiceByCategory($path)
    {
        $data = $this->frontendRepository->getServiceByCategory($path);
        return view('frontend.' . $data['categoryPost']->template, compact('data'));
    }

    public function getAllListCategoryAndProduct(){
        $data = $this->frontendRepository->getAllListCategoryAndProduct();
        return view('frontend.home.index',compact('data'));
    }

    public function getProductInfo($categoryPath, $productPath){
        $data = $this->frontendRepository->getProductInfo($categoryPath, $productPath);
        return view('frontend.'.$data['product']->template,compact('data'));
    }

    public function getServiceInfo($categoryPath, $servicePath){
        $data = $this->frontendRepository->getServiceInfo($categoryPath, $servicePath);
        return view('frontend.'.$data['service']->template,compact('data'));
    }

    public function getMainPage($path){
        $data=$this->frontendRepository->getMainPage($path);
        return view('frontend.'.$data[0]->template,compact('data'));
    }
}

