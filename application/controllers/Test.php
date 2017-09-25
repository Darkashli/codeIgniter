<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {

	public function __construct(){ 
         parent::__construct(); 
         // $this->load->model('model_name');
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