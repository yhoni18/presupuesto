<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Unidad_Model extends CI_Model {

    
    public function fetch_all($buscar = '') {
        $query = $this->db->query("CALL PA_Listar_unidad('%$buscar%')");
        $rs = $query->result();
        $query->next_result();
        $query->free_result();
        return $rs;
    }

    
    public function fetch_all_state($state= 1, $search ='') {
        $query = $this->db->query("CALL pa_lista_unidades(1, '%$search%')");
        $result = $query->result();
        $query->next_result();
        $query->free_result();
        return $result;
    }

    
    public function getId($id) {
        $query = $this->db->query("CALL PA_unidad_medida_x_Cod($id)");
        $result = $query->row();
        $query->next_result();
        $query->free_result();
        return $result;
    }

    public function update($id) {
        $nombre =  $_POST['uni_descripcion'];
        $estado =  $_POST['uni_estado'];
        $result = $this->db->query("CALL PA_Actualizar_unidad_medida('$id', '$nombre', '$estado')");
        return $result ? true : false;
    }

    public function insert() {
        $nombre =  $_POST['uni_descripcion'];
        $estado =  $_POST['uni_estado'];
        $result = $this->db->query("CALL PA_Registrar_unidad_medida('$nombre', '$estado')");
        return $result ? true : false;
    }

    public function destroy($id) {
        $result = $this->db->query("CALL PA_Borrar_marca('$id')");
        return $result ? true : false;
    }

}
