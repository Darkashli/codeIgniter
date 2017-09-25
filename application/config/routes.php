<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['posts/create'] = 'posts/create';
$route['default_controller'] = 'pages/view';
$route['posts'] = 'posts/index';
$route['posts/(:any)'] = 'posts/view/$1';
$route['(:any)'] = 'pages/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
