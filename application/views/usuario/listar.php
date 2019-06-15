
    
<div style='padding: 10px;'>

    <div class="callout callout-info">
    <h2>Lista de Usuarios</h2>
    </div>

    <div style='padding-bottom: 5px;'>
        <a href='<?php echo site_url('usuario/registrar/0'); ?>' class='btn btn-success'>Nuevo</a>
    </div>
    <table id='tblUsuarioList' class='table'>
        <thead>
        <tr>
            <th>Cód</th>
            <th>Empleado</th>
            <th>Nombre</th>
            <th>Rol</th>
            <th hidden>Ultimo acceso</th>
            <th>Fecha registro</th>
            <th hidden>Situacion</th>
            <th>Estado</th>
            <th>Contraseña</th>
            <th>Editar</th>
            <th>Borrar</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($usu_list as $usu_row) { ?>
            <tr>
                <td class='txt_center'><?= PadZero($usu_row['usu_cod'], 2); ?></td>
                <td><?= $usu_row['emp_nombre']; ?></td>
                <td><?= $usu_row['usu_nombre']; ?></td>
                <td><?= $usu_row['rol_nombre']; ?></td>
                <td hidden class='txt_center'><?= FormatDate($usu_row['usu_ultimo_acceso']); ?></td>
                <td><?= FormatDate($usu_row['usu_fecha_reg']); ?></td>
                <td hidden><?= $usu_row['usu_situacion']; ?></td>
                <td><?= getEstados()[$usu_row['usu_estado']]; ?></td>
                <td class='txt_center'><a href='<?php echo site_url("usuario/resetpsw/$usu_row[usu_cod]") ?>'
                                          class='btn btn-warning'>Contraseña</a></td>
                <td class='txt_center'><a href='<?php echo site_url("usuario/registrar/$usu_row[usu_cod]") ?>'
                                          class='btn btn-primary'>Editar</a></td>
                <?php if ($usu_row['usu_estado'] == ACTIVO) { ?>
                    <td class='txt_center'><a href='<?php echo site_url("usuario/borrar/$usu_row[usu_cod]") ?>'
                                              class='btn btn-danger'>Desactivar</a></td>
                <?php } else { ?>
                    <td class='txt_center'><a href='<?php echo site_url("usuario/activar/$usu_row[usu_cod]") ?>'
                                              class='btn btn-info'>Activar</a></td>
                <?php } ?>
            </tr>
        <?php } ?>
        <?php if (empty($usu_list)) { ?>
            <tr>
                <td colspan='9' class='nodata txt_center'>No hay datos que mostrar</td>
            </tr>
        <?php } ?>
        </tbody>
        <tfoot></tfoot>
    </table>
</div>

