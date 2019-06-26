<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tdocumento_model extends CI_Model {

    
    public function fetch_all($buscar = '') {
        $query = $this->db->query("CALL pa_lista_tdocumento('%$buscar%')");
        $rs = $query->result();
        $query->next_result();
        $query->free_result();
        return $rs;
    }

    
    
    public function getId($id) {
        $query = $this->db->query("CALL PA_tipo_documento_x_Cod($id)");
        $result = $query->row();
        $query->next_result();
        $query->free_result();
        return $result;
    }

    public function update($id) {
        $nombre =  $_POST['tdoc_nombre'];
        $estado =  $_POST['tdoc_estado'];
        $result = $this->db->query("CALL pa_actualizar_tdocumento('$id', '$nombre', '$estado')");
        return $result ? true : false;
    }

    public function insert() {
        $nombre =  $_POST['tdoc_nombre'];
        $estado =  $_POST['tdoc_estado'];
        $result = $this->db->query("CALL PA_Registrar_tipo_documento('$nombre', '$estado')");
        return $result ? true : false;
    }

    public function destroy($id) {
        $result = $this->db->query("CALL PA_borrar_tdoc('$id')");
        return $result ? true : false;
    }

}
