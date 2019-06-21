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

    public function fetch_all_state($buscar = '') {
        $query = $this->db->query("CALL PA_Listar_categoria('%$buscar%')");
        $rs = $query->result();
        $query->next_result();
        $query->free_result();
        return $rs;
    }

    

    public function getId($id) {
        $query = $this->db->query("CALL PA_categoria_x_Cod($id)");
        $result = $query->row();
        $query->next_result();
        $query->free_result();
        return $result;
    }

    public function update($id) {

        $nombre = $_POST['cat_nombre'];
        $estado =  $_POST['cat_estado'];
        $result = $this->db->query("CALL PA_Actualizar_categoria('$id', '$nombre', '$estado')");
        return $result ? true : false;
    }

    public function insert() {
        $nombre =  $_POST['cat_nombre'];
        $estado =  $_POST['cat_estado'];
        $result = $this->db->query("CALL PA_Registrar_categoria('$nombre', '$estado')");
        return $result ? true : false;
    }

    public function destroy($id) {
        $result = $this->db->query("CALL PA_Borrar_categoria('$id')");
        return $result ? true : false;
    }

}
