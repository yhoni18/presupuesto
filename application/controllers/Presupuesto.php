<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Presupuesto extends CI_Controller
{
    public function index() {
        $this->load->model('presupuesto_model');
        $records = $this->presupuesto_model->fetch_all();

        $this->load->view('index/header');
        $this->load->view('index/menu');
        $this->load->view('presupuesto/index', compact('records'));
    }

    public function edit($id) {

        $this->load->view('index/header');
        $this->load->view('index/menu');
    }

    public function show($id) {

        $this->load->view('index/header');
        $this->load->view('index/menu');
        $this->load->view('presupuesto/show');
    }

    public function destroy($id)
    {

    }
}