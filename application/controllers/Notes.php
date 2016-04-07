<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Notes extends CI_Controller {

  	public function __construct () {
  		parent::__construct();
  		$this->load->model("Note");
  	}
  	public function notes_html() {
  		$data['data'] = $this->Note->all();
  		$this->load->view("partial/notes", $data);
  	}

	public function index() {
		$this->output->enable_profiler();
		$this->load->view('index');
	}
	public function add() {
		$new_note = $this->input->post();
		$this->Note->create($new_note);
		$data['data'] = $this->Note->all();
		$this->load->view("partial/notes", $data);
	}
	public function modify() {
		$modified_note = $this->input->post();
		$this->Note->modify($modified_note);
		$data['data'] = $this->Note->all();
		$this->load->view("partial/notes", $data);		
	}
	public function delete() {
		$noteid = $this->input->post();
		$this->Note->delete($noteid['id']);
		$data['data'] = $this->Note->all();
		$this->load->view("partial/notes", $data);
	}
}
	