<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Producto_model extends CI_Model {

    public function fetch_all($buscar='') {
        $query = $this->db->query("CALL PA_Listar_producto() ");
         $result = $query->result();
         $query->free_result();
         return $result;
    }

    public function fetch_all_state() {
        $query = $this->db->query("CALL PA_Listar_producto('', 1)");
        $result = $query->result();
        $query->next_result();
        $query->free_result();
        return $result;
    }

    public function update($id) {
        $sub = $_POST['sub_cod'];
        $marca =  $_POST['marc_cod'];
        $presentacion = $_POST['pres_cod'];
        $nom =  $_POST['prod_nombre'];
        $pc = $_POST['prod_precio_compra'];
        $pv =  $_POST['prod_precio_venta'];
        $incre = $_POST['prod_incremento'];
        $fecha =  $_POST['prod_fecha_venc'];
        $estado =  $_POST['prod_estado'];
        $imagen = '';
        if($_FILES['imagen']['error'] > 0) { $imagen = ''; }
        $extsAllowed = array( 'jpg', 'jpeg', 'png', 'gif' );
        $extUpload = strtolower( substr( strrchr($_FILES['imagen']['name'], '.') ,1));
        if (in_array($extUpload, $extsAllowed) ) { 
            $name = "img/{$_FILES['imagen']['name']}";
            $filepath = dirname(dirname(dirname(__FILE__)))."/".$name;
            $result = @move_uploaded_file($_FILES['imagen']['tmp_name'], $filepath);
            if($result){ $imagen = $name;}
        } else { $imagen = ''; }
        $result = $this->db->query("CALL pa_alm_producto_update('$id', '$sub', '$marca', '$presentacion', '$nom', '$pc', '$pv', '$incre', '$fecha', '$imagen' , '$estado')");
        return $result ? true : false;
    }

    public function insert() {
        $sub = $_POST['sub_cod'];
        $marca =  $_POST['marc_cod'];
        $presentacion = $_POST['pres_cod'];
        $nom =  $_POST['prod_nombre'];
        $pc = $_POST['prod_precio_compra'];
        $pv =  $_POST['prod_precio_venta'];
        $incre = $_POST['prod_incremento'];
        $fecha =  $_POST['prod_fecha_venc'];
        //$imagen = $_POST['prod_imagen'];
        $estado =  $_POST['prod_estado'];
        $nombre = $_FILES['imagen']['name'];
        $nombrer = strtolower($nombre);
        $imagen = '';
        if($_FILES['imagen']['error'] > 0) { $imagen = ''; }
        $extsAllowed = array( 'jpg', 'jpeg', 'png', 'gif' );
        $extUpload = strtolower( substr( strrchr($_FILES['imagen']['name'], '.') ,1));
        if (in_array($extUpload, $extsAllowed) ) { 
            $name = "img/{$_FILES['imagen']['name']}";
            $filepath = dirname(dirname(dirname(__FILE__)))."/".$name;
            $result = @move_uploaded_file($_FILES['imagen']['tmp_name'], $filepath);
            if($result){ $imagen = $name;}
        } else { $imagen = ''; }
        $result = $this->db->query("CALL pa_alm_producto_insert('$sub', '$marca', '$presentacion', '$nom', '$pc', '$pv', '$incre', '$fecha', '$imagen' , @id)");
        return $result ? true : false;
    }

    public function destroy($id) {
        $query = $this->db->query("CALL pa_alm_producto_delete('$id')");
        $query->free_result();
        return $query ? true : false;
    }

    public function getId($id) {
        $query = $this->db->query("CALL PA_producto_x_Cod($id)");
        $result = $query->row();
        $query->free_result();
        return $result;
    }

}
