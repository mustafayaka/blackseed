<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Categories extends CI_Controller {


	public function __construct()
	{
		parent::__construct();
		$this->load->model('category_model', 'category');
	}

	public function index()
	{
		$viewData = new stdClass();
		$viewData->results = $this->category->get_all();
		$this->load->view('categories', $viewData);
	}

	public function add()
	{
		$viewData = new stdClass();
		$viewData->target 	= "add-category-form";
		$viewData->action 	= base_url('categories/submit');
		$viewData->heading 	= 'Add New Category';
		$this->load->view('categories/list/form', $viewData);
	}

	public function submit()
	{
		$json = [];
	}

	public function edit($id)
	{
		$category = $this->category->get(array('id' => $id));
		return $this->form($category);
	}

	public function form()
	{



	}

}
