<?php

    class EmpleadoModel extends CI_Model
    {
        var $empleadoCodigo;
        var $nombre;
        var $apePat;
        var $apeMat;
        var $direccion;
        var $telefono;
        var $fechaInicioTrabajo;
        var $fechaFinTrabajo;
        var $estado;
        var $sexo;
        var $cod;
        var $numeroDoc;

        public function listarCbo($empl_cod = 0) {
            $query = $this->db->query("CALL pa_empleado_listCbo(?)", [$empl_cod]);
            $result = $query->result_array();
            $this->db->next_result();
            return $result;
        }
    }