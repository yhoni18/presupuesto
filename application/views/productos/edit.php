<div class="row">
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        <h3 class="page-header">Editando Proudcto N°<?= $producto->prod_cod ?></h3>
    </div>
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        <?php if(isset($result)):?>
            <?php echo html_alert('success', 'Se ha guardao correctamente el registro', 'Guardado', 'check'); ?>
        <?php endif; ?>
    </div>
</div>

<div class="row">
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        <form enctype="multipart/form-data" class="form-horizontal" action="<?=site_url(array('producto', 'update', $producto->prod_cod))?>" method="post">
                        
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Categoría</span>
                    <select name="sub_cod" class="form-control">
                        <option>-- SELECCIONE --</option>
                        <?php foreach($subcategorias as $category): ?>
                        <option value="<?=$category->sub_cod?>"><?=$category->sub_nombre?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Marca</span>
                    <select name="marc_cod" class="form-control">
                        <option>-- SELECCIONE --</option>
                        <?php foreach($marcas as $marca): ?>
                        <option value="<?=$marca->marc_cod?>"><?=$marca->marc_nombre?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Presentacion</span>
                    <select required="required" name="pres_cod" class="form-control">
                        <option>-- SELECCIONE --</option>
                        <?php foreach($presentaciones as $presentacion): ?>
                        <option value="<?=$presentacion->pres_cod?>"><?=$presentacion->pres_nombre?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
             <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Nombre</span>
                    <input letters="true" required="required" class="form-control" type="text" name="prod_descripcion" value="<?=$producto->prod_nombre?>">
                </div>
            </div>
             <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Precio Venta</span>
                    <input required="required" class="form-control" type="number" name="prod_precio_venta" value="<?=$producto->prod_precio_venta?>">
                </div>
            </div>
             <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Precio Compra</span>
                    <input required="required" class="form-control" type="text" name="prod_precio_compra" value="<?=$producto->prod_precio_compra?>">
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Incremento</span>
                    <input max="100" required="required" value="<?=$producto->prod_incremento?>" class="form-control" type="number" name="prod_incremento">
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Imagen</span>
                    <input name="imagen" type="file" class="form-control">
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Estado</span>
                    <select class="form-control" name="prod_estado">
                        <option value="1">Activo</option>
                        <option value="0">Inactivo</option>
                    </select>
                </div>
            </div>
            
            <div class="col-xs-12">
                <div class="form-group">
                    <button class="btn btn-success" type="submit">
                        <i class="fa fa-fw fa-save"></i> Guardar
                    </button>
                </div>
            </div>
            
        </form>
    </div>
</div>

<script>
    $(document).ready(function(){
        $("select[name='sub_cod']").val('<?=$producto->sub_cod?>').trigger('change');
        $("select[name='marc_cod']").val('<?=$producto->marc_cod?>').trigger('change');
        $("select[name='pres_cod']").val('<?=$producto->pres_cod?>').trigger('change');
        $("select[name='prod_estado']").val('<?=$producto->prod_estado?>').trigger('change');
    });
</script>
