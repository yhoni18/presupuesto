
<div  style='padding: 30px;'>
    

<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header">Productos</h3>
    </div>
</div>

    <div class="col-xs-12">
        <?php if(isset($result)):?>
            <?php echo html_alert(isset($result['type']) ? $result['type'] : 'success' , $result['message'], $result['title'], 'check'); ?>
        <?php endif; ?>
    </div>
    
    <div class="col-xs-12">
        <a class="btn btn-primary" href="<?= site_url(['producto', 'create']) ?>">
            <i class="fa fa-fw fa-plus"></i> Agregar
        </a>
    </div>
    
    <div class="col-xs-12">
        <form action="<?= site_url(['producto', 'index']) ?>" method="post">
            <div class="input-group">
                
                <input name="q" id="q" type="search" class="form-control" />
                <div class="input-group-btn">
                    <button type="submit" class="btn btn-default">
                        <span >Buscar</span>
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>
    
        
    
        <table class="table">
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
                        <td>Tuercas</td>
                        <td>10.00</td>
                        <td>11.00</td>
                        <td>index</td>
                        <td>Producto</td>
                        <td>Pieza</td>
                        <td>Almacen 1</td>
                        <!--<td><?=$row->prod_cod?>
                        <td><?= $row->prod_nombre ?></td>
                        <td><?= $row->sub_nombre ?></td>
                        <td><?= $row->marc_nombre ?></td>
                        <td><?= $row->pres_nombre ?></td>
                        <td><?= $row->prod_precio_compra ?></td>
                        <td><img width="50" height="50" class="img-thumbnail img-circle" src="<?= base_url($row->prod_imagen) ?>" alt=""></td>
                        
                        <td><?= $row->prod_estado ?></td>
                        <td><?=$row->prod_estado == '1' ? '<i class="fa fa-fw fa-check"></i>' : '<i class="fa fa-fw fa-remove"></i>'?></td>
                        </td>-->
                        <td>
                            <div class="btn-group btn-group-sm">
                                <a title="Mostrar" class="btn btn-info" href="#">
                                    <i class="fa fa-fw fa-eye"></i>
                                </a>
                                <a title="Editar" class="btn btn-success" href="#">
                                    <i class="fa fa-fw fa-pencil"></i>
                                </a>
                                <a title="Eliminar" class="btn btn-danger" href="#">
                                    <i class="fa fa-fw fa-remove"></i>
                                </a>
                                
                            </div>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

</div>