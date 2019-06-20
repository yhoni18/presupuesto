<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Marca_model extends CI_Model {

    public function fetch_all($buscar='') {
        $query = $this->db->query("CALL pa_alm_marca_list('$buscar' , '')");
        $result = $query->result();
        $query->next_result();
        $query->free_result();
        return $result;
    }

//    public function fetch_all_state($state = '1') {
//        $result = $this->db->query('SELECT * FROM alm_marca WHERE marc_estado = \''.$state.'\'');
//        return $result->result();
//    }
    public function fetch_all_state($state= 1, $search ='') {
        $query = $this->db->query("CALL pa_listar_marca_estado(1, '%$search%')");
        $result = $query->result();
        $query->next_result();
        $query->free_result();
        return $result;
    }

    public function getId($id) {
        $result = $this->db->query("SELECT * FROM alm_marca WHERE marc_cod='$id'");
        return  $result->row();
    }

    public function update($id) {
        $nombre = $_POST['marc_nombre'];
        $estado =  $_POST['marc_estado'];
        $result = $this->db->query("CALL pa_alm_marca_update('$id', '$nombre', '$estado')");
        return $result ? true : false;
    }

    public function insert() {
        $nombre =  $_POST['marc_nombre'];
        $estado =  $_POST['marc_estado'];
        $result = $this->db->query("CALL pa_alm_marca_insert('$nombre', '$estado')");
        return $result ? true : false;
    }

    public function destroy($id) {
        $result = $this->db->query("CALL pa_alm_marca_delete('$id')");
        return $result ? true : false;
    }

}
