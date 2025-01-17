<section style="padding: 1.5em">
    <div class="callout callout-info">
        <h2>Nuevo Presupuesto</h2>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">Información de presupuesto</h4>
        </div>
        <div class="panel-body">
            <form id="frm-presupuesto" action="">
                <div class="row">
                    <div class="col-xs-12 col-md-6 col-lg-4">
                        <div class="form-group">
                            <label for="fecha_emision" class="control-label">Fecha Emisión</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input required="required" id="fecha_emision" name="fecha_emision" type="date" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-6 col-lg-4">
                        <div class="form-group">
                            <label for="fecha_recepcion" class="control-label">Fecha Recepción</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input required="required" id="fecha_recepcion" name="fecha_recepcion" type="date" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-lg-4">
                        <div class="form-group">
                            <label for="forma_pago" class="control-label">Forma de pago</label>
                            <input id="forma_pago" name="forma_pago" type="text" class="form-control" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-md-8">
                        <div class="form-group">
                            <label for="lugar_trabajo" class="control-label">Lugar Trabajo</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <input required="required" name="lugar_trabajo" id="lugar_trabajo" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-4">
                        <div class="form-group">
                            <label for="estado" class="control-label">Estado</label>
                            <select required="required" name="estado" id="estado" class="form-control">
                                <option value="1">Enviado</option>
                                <option value="2">Aceptado</option>
                                <option value="3">Por cancelar</option>
                                <option value="4">Cancelado </option>
                                <option value="5">Anulado</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-md-4">
                        <div class="form-group">
                            <label for="costo_mano_obra" class="control-label">Precio mano obra</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-money"></i>
                                </div>
                                <input name="costo_mano_obra" id="costo_mano_obra" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-4">
                        <div class="form-group">
                            <label for="costo_materiales" class="control-label">Costo Materiales</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-money"></i>
                                </div>
                                <input readonly="readonly" name="costo_materiales" id="costo_materiales" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-4">
                        <div class="form-group">
                            <label for="costo_total" class="control-label">Costo Total</label>
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-money"></i>
                                </div>
                                <input name="costo_total" id="costo_total" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <label for="encargado" class="control-label">Encargado</label>
                            <select required="required" name="encargado" id="encargado" class="form-control">
                                <option value="">-- SELECCIONE --</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="btn-group" style="margin-bottom: 1.3em;">
                            <button onclick="Presupuesto.reset()" type="button" data-target="#modal-presupuesto" data-toggle="modal" class="btn btn-success">
                                <i class="fa fa-plus"></i>
                                <span>Agregar</span>
                            </button>
                        </div>
                        <div class="table-responsive">
                            <table id="tb-details" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td>Preducto</td>
                                        <td>Precio</td>
                                        <td>Cantidad</td>
                                        <td>Acciones</td>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="panel-footer">
            <button data-callback="Presupuesto.save('<?= site_url(['presupuesto', 'store']) ?>')" data-target="#frm-presupuesto" role="submit" class="btn btn-primary pull-right">
                <i class="fa fa-save"></i>
                <span>Guardar</span>
            </button>
            <a href="<?= site_url('presupuesto') ?>" class="btn btn-default">
                <i class="fa fa-arrow-left"></i>
                <span>Atrás</span>
            </a>
        </div>
    </div>
</section>
<div id="modal-presupuesto" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button data-dismiss="modal" class="close">&times;</button>
                <h4 class="modal-title">Producto</h4>
            </div>
            <div class="modal-body">
                <form id="frm-modal" action="">
                    <input type="hidden" id="action" name="action" value="new">
                    <input type="hidden" id="id_detalle" name="id_detalle" value="0">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="cod_prod" class="control-label">Producto</label>
                                <select data-attr="price" data-target="#precio" required="required" name="cod_prod" id="cod_prod" class="form-control">
                                    <option value="0">-- SELECCIONE --</option>
                                    <?php foreach($products as $row): ?>
                                    <option price="<?=$row->prod_precio_venta?>" value="<?= $row->prod_cod ?>"><?= $row->prod_nombre_comercial ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="precio" class="control-label">Precio</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-money"></i></div>
                                    <input id="precio" name="precio" type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="cantidad" class="control-label">Cantidad</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></div>
                                    <input required="required" min="0.1" id="cantidad" name="cantidad" type="number" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default">Cancelar</button>
                <button data-target="#frm-modal" role="submit" data-callback="Presupuesto.add()" class="btn btn-primary"><i class="fa fa-check"></i><span>Aceptar</span></button>
            </div>
        </div>
    </div>
</div>
<script src="<?=base_url();?>assets/plugins/jquery-validation/jquery.validate.min.js"></script>
<script src="<?=base_url();?>assets/plugins/jquery-validation/additional-methods.min.js"></script>
<script src="<?=base_url();?>assets/plugins/jquery-validation/localization/messages_es_PE.min.js"></script>
<script src="<?=base_url();?>assets/js/presupuesto.js"></script>
<script>
    $(document).ready(function() {
        Presupuesto.init();
    });
</script>