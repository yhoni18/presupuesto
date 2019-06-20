<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Almacen_model extends CI_Model {
    public function fetch_all_state($buscar = '') {
        $query = $this->db->query("CALL pa_lista_almacen('%$buscar%')");
        $rs = $query->result();
        $query->next_result();
        $query->free_result();
        return $rs;
    }
}