


<div  style='padding: 10px;'>

    <div class="callout callout-info">
    <h2>Listado de roles</h2>
    </div>

     <div style='padding-bottom: 5px;'>
        <a href='<?php echo site_url('rol/registrar/0'); ?>' class='btn btn-success'>Nuevo</a>
    </div>   

    
    

    <table id='tblRolList' class='table'>
        <thead>
        <tr>
            <th>Cód</th>
            <th>Nombre</th>
            <th class='hidden'>Fecha reg</th>
            <th hidden>Estado</th>
            <th>Editar</th>
            <th>Borrar</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($rol_list as $rol_row) { ?>
            <tr>
                <td class='txt_center'><?= PadZero($rol_row['rol_cod'], 2); ?></td>
                <td><?= $rol_row['rol_nombre']; ?></td>
                <td class='hidden'><?= FormatDate($rol_row['rol_fecha_reg']); ?></td>
                <td hidden><?= getEstados()[$rol_row['rol_estado']]; ?></td>
                <td class='txt_center'><a href='<?php echo site_url("rol/registrar/$rol_row[rol_cod]") ?>'
                                          class='btn btn-primary'>Editar</a></td>
                <td class='txt_center'><a href='<?php echo site_url("rol/borrar/$rol_row[rol_cod]") ?>' 
                    class='btn btn-danger '>Borrar</a></td>
            </tr>
        <?php } ?>
        <?php if (empty($rol_list)) { ?>
            <tr>
                <td colspan='4' class='nodata txt_center'>No hay datos que mostrar</td>
            </tr>
        <?php } ?>
        </tbody>
        <tfoot></tfoot>
    </table>
        
     
</div>


