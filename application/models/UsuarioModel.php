<?php

    class UsuarioModel extends CI_Model
    {
        var $usu_cod;
        var $emp_codigo;
        var $usu_nombre;
        var $usu_clave;
        var $rol_cod;
        var $usu_ultimo_acceso;
        var $usu_fecha_reg;
        var $usu_situacion;
        var $usu_estado;

        public function getByID($usu_cod) {
            $query  = $this->db->query("CALL pa_usuario_getByID(?)", [$usu_cod]);
            $result = $query->result_array();
            $this->db->next_result();
            return $result;
        }

        public function listar() {
            $query  = $this->db->query("CALL pa_usuario_list(?,?)", ["", 1]);
            $result = $query->result_array();
            $this->db->next_result();
            return $result;
        }

        public function login($usu_nombre, $usu_contrasena) {
            $query  = $this->db->query("CALL pa_UsuarioLogin(?,?)", [$usu_nombre, $usu_contrasena]);
            $result = $query->result_array();
            $this->db->next_result();
            return $result;
        }

        public function getByNombre($usu_nombre) {
            $query  = $this->db->query("CALL pa_UsuarioGetByNombre(?)", [$usu_nombre]);
            $result = $query->result_array();
            $this->db->next_result();
            return $result;
        }

        public function resetearContrasena($usu_cod, $usu_contrasena) {
            $result = $this->db->query("CALL pa_UsuarioResetearContrasena(?, ?)", [$usu_cod, $usu_contrasena]);
            return $result;
        }

        public function insertar() {
            $result = $this->db->query("CALL pa_usuario_insert(?,?,?,?,?,@usu_cod)",
                [$this->emp_codigo,
                 $this->usu_nombre,
                 $this->usu_clave,
                 $this->rol_cod,
                 $this->usu_situacion]);
            return $result;
        }

        public function update() {
            $result = $this->db->query("CALL pa_usuario_update(?,?,?,?,?)",
                [$this->usu_cod,
                 $this->emp_codigo,
                 $this->usu_nombre,
                 $this->rol_cod,
                 $this->usu_situacion]);
            return $result;
        }

        public function resetpsw($usu_cod, $usu_contrasena) {
            $result = $this->db->query("CALL pa_UsuarioResetearContrasena(?,?)", [$usu_cod, $usu_contrasena]);
            return $result;
        }

        public function borrar($usu_cod) {
            $query = $this->db->query("CALL pa_usuario_deactivate(?);", $usu_cod);
            return $query;
        }

        public function activar($usu_cod) {
            $query = $this->db->query("CALL pa_usuario_activate(?);", $usu_cod);
            return $query;
        }
    }
