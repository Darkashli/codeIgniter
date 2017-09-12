<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TestController2 extends CI_Controller {

	public function __construct(){ 
         parent::__construct(); 
         echo "This is the main header!<br>";
      } 
    
    public function index(){
    	echo "This is the default method";
    }

	public function one(){
		echo "It works!";
	}

	public function two(){
		echo "this is the second method";
	}
}