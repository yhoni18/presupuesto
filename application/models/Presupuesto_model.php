<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Presupuesto_model extends CI_Model 
{
    public function fetch_all($buscar = '') 
    {
        $query = $this->db->query("CALL pa_presupuesto_listar('%$buscar%')");
        $rs = $query->result();
        $query->next_result();
        $query->free_result();
        return $rs;
    }
}