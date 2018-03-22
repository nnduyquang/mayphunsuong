<?php

namespace App\Repositories\Frontend;


use App\CategoryPost;
use App\Post;
use App\Product;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getAllSidebar()
    {
        $sidebar = [];
        $categoryPosts = CategoryPost::where('type', 0)->get();
        $categoryProducts = CategoryPost::where('type', 1)->get();
        $sidebar['categoryPosts'] = $categoryPosts;
        $sidebar['categoryProducts'] = $categoryProducts;
        return $sidebar;
    }

    public function getProductByCategory($path)
    {
        $data = [];
        $categoryProduct = CategoryPost::where('path', $path)->first();
        $products = Product::where('category_product_id', $categoryProduct->id)->get();
        foreach ($products as $key => $data) {
            $data->price = number_format($data->price, 0, ',', '.');
            $data->final_price = number_format($data->final_price, 0, ',', '.');
        }
        $page = Post::find($categoryProduct->page_id);
        $data['categoryProduct'] = $categoryProduct;
        $data['products'] = $products;
        $data['page'] = $page;
        return $data;
    }

    public function getServiceByCategory($path)
    {
        $data = [];
        $categoryPost = CategoryPost::where('path', $path)->first();
        $posts = Post::where('category_post_id', $categoryPost->id)->get();
        $page = Post::find($categoryPost->page_id);
        $data['categoryPost'] = $categoryPost;
        $data['posts'] = $posts;
        $data['page'] = $page;
        return $data;
    }

    public function getAllListCategoryAndProduct()
    {
        $categoryProducts = CategoryPost::where('type', 1)->get();
        foreach ($categoryProducts as $key => $data) {
            $products = Product::where('category_product_id', $data->id)->take(8)->get();
            foreach ($products as $key2 => $data2) {
                $data2->price = number_format($data2->price, 0, ',', '.');
                $data2->final_price = number_format($data2->final_price, 0, ',', '.');
            }
            $data['products'] = $products;
        }
        $data['categoryProducts'] = $categoryProducts;
        $categoryProject = CategoryPost::where('id', 6)->first();
        $projects = Post::where('category_post_id', 6)->get();
        $data['projects'] = $projects;
        $data['categoryProject'] = $categoryProject;
        return $data;
    }

    public function getProductInfo($categoryPath, $productPath)
    {
        $data = [];
        $product = Product::where('path', $productPath)->first();
        $product->price = number_format($product->price, 0, ',', '.');
        $product->final_price = number_format($product->final_price, 0, ',', '.');
        $orther = Product::where('category_product_id', $product->category_product_id)->where('id', '!=', $product->id)->get();
        foreach ($orther as $key => $data) {
            $data->price = number_format($data->price, 0, ',', '.');
            $data->final_price = number_format($data->final_price, 0, ',', '.');
        }
        $data['product'] = $product;
        $data['orther'] = $orther;
        return $data;
    }

    public function getServiceInfo($categoryPath, $servicePath)
    {
        $data = [];
        $service = Post::where('path', $servicePath)->first();
        $orther = Post::where('category_post_id', $service->category_post_id)->where('id', '!=', $service->id)->get();
        $data['service'] = $service;
        $data['orther'] = $orther;
        return $data;
    }

    public function getFooterInfo()
    {
        $listFooterCategory = CategoryPost::where('type', 1)->get();
        return $listFooterCategory;
    }

    public function getMainPage($path)
    {
        $page = Post::where('path', $path)->get();
        return $page;
    }


}