<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Categoria_model extends CI_Model {

    public function fetch_all($buscar='') {
        $query = $this->db->query("CALL pa_lista_categoria_estado(1, '%$buscar%');");
        $result = $query->result();
        $query->next_result();
        $query->free_result();
        return $result;
    }

    public function fetch_all_state($state = 1, $buscar = '') {
        $query = $this->db->query("CALL pa_lista_categoria_estado($state, '%$buscar%');");
        $result = $query->result();
        $query->next_result();
        $query->free_result();
        return $result;
    }

    public function getId($id, $next = true) {
        $query = $this->db->query("CALL pa_alm_categoria_getByID($id)");
        $result = $query->row();
        if($next) {
            $query = $query->next_result();
        }
        $query->free_result();
        return $result;  
    }

    public function update($id) {
        $nombre = $_POST['cat_nombre'];
        $estado =  $_POST['cat_estado'];
        $result = $this->db->query("CALL pa_alm_categoria_update('$id', '$nombre', '$estado')");
        return $result ? true : false;
    }

    public function insert() {
        $nombre =  $_POST['cat_nombre'];
        $estado =  $_POST['cat_estado'];
        $result = $this->db->query("CALL pa_alm_categoria_insert('$nombre', '$estado')");
        return $result ? true : false;
    }

    public function destroy($id) {
        $result = $this->db->query("CALL pa_alm_categoria_delete('$id')");
        return $result ? true : false;
    }

}
