<div class="row">
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        <h3 class="page-header">Editando Almacen N°<?= $almacen->alm_codigo ?></h3>
    </div>
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        <?php if(isset($result)):?>
            <?php echo html_alert('success', 'Se ha guardao correctamente el registro', 'Guardado', 'check'); ?>
        <?php endif; ?>
    </div>
</div>

<div class="row">
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        <form enctype="multipart/form-data" class="form-horizontal" action="<?=site_url(array('almacen', 'update', $almacen->alm_codigo))?>" method="post">
             
            
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Nombre</span>
                    <input letters="true" required="required" class="form-control" type="text" 
                     name="alm_nombre" value="<?=$almacen->alm_nombre?>">
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-addon">Direccion</span>
                    <input letters="true" required="required" class="form-control" type="text" 
                     name="alm_direccion" value="<?=$almacen->alm_direccion?>">
                </div>
            </div>


            
            <div class="col-xs-12">
                <div class="form-group">
                    <button class="btn btn-success" type="submit">
                        <i class="fa fa-fw fa-save"></i> Guardar
                    </button>
                    
                    <a href='<?php echo site_url('almacen') ?>' class='btn btn-danger' id='btnCancelar'>Cancelar
                    <i class="fa fa-mail-reply"></i>
                </a>
                </div>
            </div>
            
        </form>
    </div>
</div>
