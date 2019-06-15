
<div  style='padding: 30px;'>

<div class="row">
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        <h3 class="page-header">Registrar Producto</h3>
    </div>
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        <?php if(isset($result)):?>
            <?php echo html_alert('success', 'Se ha guardado correctamente el registro', 'Guardado', 'check'); ?>
        <?php endif; ?>
    </div>
</div>


        
    
  
    <div class="col-xs-12 col-md-offset-2 col-md-6">
        
        <form enctype="multipart/form-data" class="form-horizontal" action="<?=site_url(array('producto', 'store'))?>" method="post">
            
            
            

            <div class="col-xs-12">
                
                <div class="form-group input-group">
                    <span class="input-group-text">Categoría</span>
                    <select name="sub_cod" class="form-control">
                        <option>-- SELECCIONE --</option>
                        <option>-- Opcion 1 --</option>
                        <option>-- Opcion 2 --</option>                                
                        <?php foreach($subcategorias as $subcategory): ?>                  
                        <option value="<?=$subcategory->sub_cod?>"><?=$subcategory->sub_nombre?></option>
                        <?php endforeach; ?>
                        
                    </select>
                    <div class="input-group-btn">
                    <button type="submit" class="btn btn-default">
                        <span >Nuevo</span>
                        <i class="fa fa-fw fa-pencil-square"></i>
                    </button>
                    </div>
                    
                </div>
            </div>
            
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-text">Marca</span>
                    <select name="marc_cod" class="form-control">
                        <option>-- SELECCIONE --</option>
                        
                        <!--<option>-- SELECCIONE --</option>
                        <?php foreach($marcas as $marca): ?>
                        <option value="<?=$marca->marc_cod?>"><?=$marca->marc_nombre?></option>
                        <?php endforeach; ?>
                        -->
                        
                    </select>
                    <div class="input-group-btn">
                    <button type="button" class="btn btn-default" data-toggle="modal" 
                    data-target="#modal-default">
                    Nuevo<i class="fa fa-fw fa-pencil-square"></i>
                    </button>
                    </div>
                    
                </div>
            </div>
            
            
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-text">Almacen</span>
                    <select name="pres_cod" class="form-control">
                        <option>-- SELECCIONE --</option>
                        
                        <?php foreach($presentaciones as $presentacion): ?>
                        <option value="<?=$presentacion->pres_cod?>"><?=$presentacion->pres_nombre?></option>
                        <?php endforeach; ?>
                        
                    </select>
                    
                    <div class="input-group-btn">
                    <button type="submit" class="btn btn-default">
                        <span >Nuevo</span>
                        <i class="fa fa-fw fa-pencil-square"></i>
                    </button>
                    </div>
                    
                </div>
            </div>
            
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-text">Nombre</span>
                    <input class="form-control" type="text" name="prod_nombre">
                </div>
            </div>
            
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-text">Precio Compra</span>
                    <input class="form-control" type="text" name="prod_precio_compra">
                </div>
            </div>
            
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-text">Precio Venta</span>
                    <input required="required"  class="form-control" type="text" name="prod_precio_venta">
                </div>
            </div>
            
            
            
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span for="prod_fecha_venc" class="input-group-text">Fecha Vencimiento</span>
                    <input required="required" id="sol_fecha" name="prod_fecha_venc" type="date" class="form-control">
                </div>
	    </div>
            
            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-text">Estado</span>
                    <select class="form-control" name="prod_estado">
                        <option value="1">Activo</option>
                        <option value="0">Inactivo</option>
                    </select>
                    
                    
                </div>
            </div>
            
<!--            <div class="col-xs-12">
                <div class="form-group input-group">
                    <span class="input-group-text">Imagen</span>
                    <input name="imagen" type="file" class="form-control">
                </div>
            </div>-->
            
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <button type="submit" class="btn btn-success">
                            <i class="fa fa-fw fa-save"></i> Guardar
                        </button>
                    </div>
                </div>
            </div>
            
        </form>
        
        
    </div>
    
    <div class="modal fade" id="modal-default" style="display: none;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  
                <h4 class="modal-title">Default Modal</h4>
                <span aria-hidden="true">×</span></button>
              </div>
              <div class="modal-body">
                <p>One fine body…</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
    
    <div class="modal modal-primary fade" id="modal-primary">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Primary Modal</h4>
              </div>
              <div class="modal-body">
                <p>One fine body…</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-outline">Save changes</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
    
   </div>

  
    
