<?php
if(!defined('BASEPATH')) exit('No direct script access allowed');
class Reports extends MX_Controller {

	public function index(){
		$this->template->write_view('index');
	}

	public function graph(){
		$this->template->write_view('graph');
	}

	public function multigraph(){
		$this->template->write_view('multigraph');
	}
}
?>