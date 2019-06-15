<?php

class ProductoModel extends CI_Model {
    
        var $rol_cod;
        var $rol_nombre;
        var $rol_fecha_reg;
        var $rol_estado;

        public function getByID($rol_cod){
            $query = $this->db->query("CALL PA_producto_x_Cod(?)",  [$rol_cod]);
            $result = $query->result_array();
            $this->db->next_result();
            return $result;
        }

        public function listar(){
            $query = $this->db->query("CALL pa_rol_list(?,?)",  ["", 1]);
            $result = $query->result_array();
            $this->db->next_result();
            return $result;
        }

        public function listarCbo($rol_cod = 0){
            $query = $this->db->query("CALL pa_rol_listCbo(?)",  [$rol_cod]);
            $result = $query->result_array();
            $this->db->next_result();
            return $result;
        }

        public function insertar(){
            $query = $this->db->query("CALL pa_rol_insert(?,@rol_cod);",  [$this->rol_nombre]);
            return $query;
        }

        public function update(){
            $query = $this->db->query("CALL pa_rol_update(?,?);",  [$this->rol_cod, $this->rol_nombre]);
            return $query;
        }

        public function borrar($rol_cod){
            $query = $this->db->query("CALL pa_rol_delete(?);", $rol_cod);
            return $query;
        }
}

