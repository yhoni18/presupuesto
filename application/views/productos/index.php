
<div  style='padding: 1.5em;'>
    <div class="callout callout-info">
        <h2>Lista de Productos</h2>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <?php if ($this->session->flashdata('correcto')): ?>
            <div class="alert alert-success alert-dismissible fade in" role="alert">
                <strong>Correcto : </strong>&nbsp;<?php echo $this->session->flashdata('correcto'); ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?php endif ?>

            <?php if ($this->session->flashdata('error')): ?>
            <div class="alert alert-danger alert-dismissible fade in" role="alert">
            <strong>Error : </strong>&nbsp;<?php echo $this->session->flashdata('error'); ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <?php endif ?>
        </div>
        
        <div class="col-xs-12">
            <a class="btn btn-success" href="<?= site_url(['producto', 'create']) ?>" style="margin-bottom: 1.3em;">
                <i class="fa fa-fw fa-plus"></i> Agregar
            </a>
        </div>

        <div class="col-xs-12">
            <table  class="table table-striped table-bordered">
                <thead>
                    <!--<th>Código</th>-->
                    <th>Nombre Comercial</th>
                    <th>Precio Compra</th>   
                    <th>Precio Venta</th> 
                    <th>Marca</th> 
                    <th>Categoria</th>
                    <th>Unidad de Medida</th>
                    <th>Almacen</th>
                    <th>Acciones</th>
                </thead>
                <tbody>
                    <?php foreach($rows as $row): ?>
                        <tr>
                            <td><?=$row->prod_nombre_comercial?></td>
                            <td><?=$row->prod_precio_compra?></td>
                            <td><?=$row->prod_precio_venta?></td>
                            <td><?=$row->mar_nombre?></td>
                            <td><?=$row->cat_nombre?></td>
                            <td><?=$row->uni_descripcion?></td>
                            <td><?=$row->alm_nombre?></td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a title="Editar" class="btn btn-primary" href="<?= site_url('producto/edit/'.$row->prod_cod) ?>">
                                        <i class="fa fa-fw fa-pencil"></i>
                                    </a>
                                    <a title="Eliminar" class="btn btn-danger" href="<?= site_url('producto/destroy/'.$row->prod_cod) ?>"">
                                        <i class="fa fa-fw fa-remove"></i>
                                    </a>
                                    
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>

    </div>
</div>

<script>
$(document).ready(function() {
    $('.table').DataTable({
        language: {
            url: '//cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json'
        },
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
});
</script>