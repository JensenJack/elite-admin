<?php

namespace App\Http\Controllers;

use LuisMareze\PageManager\app\Models\Page;

class TestController extends Controller
{
    public function index($slug_or_id)
    {
        $page = Page::findBySlugOrId($slug_or_id);

        if (!$page)
        {
            abort(404, 'Please go back to our <a href="'.url('').'">homepage</a>.');
        }

        $this->data['title'] = $page->title;
        $this->data['page'] = $page->withFakes();

        return view('frontend.test', $this->data);
    }
}