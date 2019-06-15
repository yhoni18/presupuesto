<?php

class Producto extends CI_Controller {
    
    public function index() {
        $buscar = empty($this->input->post('q')) ? '' : $this->input->post('q') ;
        $this->load->model('producto_model');
        $rows = $this->producto_model->fetch_all($buscar);
        $this->load->view('index/header');
        $this->load->view('index/menu');
        // compact('row') === ['rows' => $rows]
        $this->load->view('productos/index', compact('rows'));
    }


    public function create() {
//        $this->load->model('subcategory_model');
//        $subcategorias= $this->subcategory_model->fetch_all_state();
//        $this->load->model('marca_model');
//        $marcas = $this->marca_model->fetch_all_state();
//        $this->load->model('presentacion_model');
//        $presentaciones = $this->presentacion_model->fetch_all_state();
        
        
//        $this->load->view('imports/header');
        
        $this->load->view('index/header');
        $this->load->view('index/menu');
        
        $this->load->view('productos/create', compact('rows'));
//        $this->load->view('imports/footer');
    }

    public function show($id) {
        $this->load->model('producto_model');
        $producto = $this->producto_model->getId($id);
        $this->load->view('imports/header');
        $this->load->view('productos/show', compact('producto'));
        $this->load->view('imports/footer');
    }

    public function edit($id) {
        $this->load->model('producto_model');
        $this->load->model('subcategory_model');
        $this->load->model('marca_model');
        $this->load->model('presentacion_model');
        $subcategorias = $this->subcategory_model->fetch_all_state();
        $marcas = $this->marca_model->fetch_all_state();
        $presentaciones = $this->presentacion_model->fetch_all_state();
        $producto = $this->producto_model->getId($id);
        $this->load->view('imports/header');
        $this->load->view('productos/edit', compact('producto', 'subcategorias','marcas','presentaciones'));
        $this->load->view('imports/footer');
    }


    public function update($id) {
        $this->load->model('producto_model');
        $result = $this->producto_model->update($id);
        if($result) {
            $result = array('title' => 'Actualizado', 'message'=> 'Se ha actualizado correctamente el registro.');
        } else {
            $result = array('title' => 'Error', 'message'=> 'No se ha podido eliminar el registro. '.$this->db->error()['message'], 'type' =>'danger', 'icon' => 'ban');
        }
        $rows = $this->producto_model->fetch_all();
        $this->load->view('imports/header');
        $this->load->view('productos/index', compact('rows', 'result'));
        $this->load->view('imports/footer');
    }

    public function store() {
        $this->load->model('producto_model');
        $result = $this->producto_model->insert();
        if($result) {
            $result = array('title' => 'Guardado', 'message'=> 'Se ha guardao correctamente el registro.');
        } else {
            $result = array('title' => 'Error', 'message'=> 'No se ha podido guardar el registro: '.$this->db->error()['message'], 'type' => 'danger', 'icon'=>'ban');
        }
        $rows = $this->producto_model->fetch_all();
        $this->load->view('imports/header');
        $this->load->view('productos/index', compact('rows','result'));
        $this->load->view('imports/footer');
    }

    public function destroy($id) {
        $this->load->model('producto_model');
        $result = $this->producto_model->destroy($id);
        if($result) {
            $result = array('title' => 'Eliminado', 'message'=> 'Se ha eliminado correctamente el registro.');
        } else {
            $result = array('title' => 'Error', 'message'=> 'No se ha podido eliminar el registro. '.$this->db->error()['message'], 'type' => 'danger', 'icon' => 'ban');
        }
        $rows = $this->producto_model->fetch_all();
        $this->load->view('imports/header');
        $this->load->view('productos/index', compact('rows', 'result'));
        $this->load->view('imports/footer');
    }
}