<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

   class TestController extends CI_Controller {
  
  //     public function index() { 
  //        echo "This is the default funtion!"; 
  //     }  
  // }
      public function index() {
		$this->load->view('TestView');
	}
}
        // $this->load->model('TestModel');
        // $this->model_name->method();
        // $autoload['modelName'] = array('first_model', 'second_model'); 

    