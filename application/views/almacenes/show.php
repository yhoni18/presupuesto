<div class="row">
    <div class="col-xs-12">
        <h3 class="page-header">Prodcuto N°<?=$producto->prod_cod?></h3>
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <div class="form-group ">
            <label class="col-xs-2">Nombre Producto</label>
            <label class="col-xs-10"><?=$producto->prod_nombre?></label>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group ">
            <label class="col-xs-2">Sub Categoría</label>
            <label class="col-xs-10"><?=$producto->sub_nombre?></label>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group ">
            <label class="col-xs-2">Marca</label>
            <label class="col-xs-10"><?=$producto->marc_nombre?></label>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group ">
            <label class="col-xs-2">Presentacion</label>
            <label class="col-xs-10"><?=$producto->pres_nombre?></label>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group ">
            <label class="col-xs-2">Estado</label>
            <label class="col-xs-10"><?=$producto->prod_estado?></label>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group ">
            <label class="col-xs-2">$ Compra</label>
            <label class="col-xs-10"><?=$producto->prod_precio_compra?></label>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group ">
            <label class="col-xs-2">$ Venta</label>
            <label class="col-xs-10"><?=$producto->prod_precio_venta?></label>
        </div>
    </div>
    <div class="col-xs-12">
        <img style="max-width: 300px; height: auto;" class="img-responsive" src="<?=base_url($producto->prod_imagen)?>" alt="">
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <a href="<?= site_url(array('producto', 'index'))?>">
            <i class="fa fa-fw fa-arrow-left"></i> Regresar al listado
        </a>
    </div>
</div>
