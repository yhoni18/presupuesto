<div style='padding: 15px;'>
    <form id='frmRolRegister' style='width: 50%;'
          method='post'>
        <div class='reg_form_body'>
            <div class='form_title'>
                <span class='h1'>Registrar rol</span>
            </div>
            <hr class='separator'/>
            <table class='wy-form-full' style='width: 100%;'>
                <tr hidden>
                    <td><label>Codigo:</label>
                    </td>
                    <td><input type='text' class="form-control" id='txtRolCod' name='txtRolCod' maxlength='50'
                               value='<?php echo IssetOr($rol_row['rol_cod'], '') ?>'
                               placeholder='Ingrese codigo del rol'
                               autocomplete='off'>
                    </td>
                </tr>
                <tr>
                    <td><label>Nombre:</label>
                    </td>
                    <td><input type='text' class="form-control" id='txtRolNombre' name='txtRolNombre' maxlength='50'
                               value='<?php echo IssetOr($rol_row['rol_nombre'], '') ?>'
                               placeholder='Ingrese nombre del rol'
                               autocomplete='off'>
                    </td>
                </tr>
            </table>
            <hr class='separator tmarg15'/>
            <div class='form_foot'>
                <input type="submit" class='btn btn-primary' name='btnRegistrar' value='Registrar'>
                <a type="submit" href='<?php echo site_url('rol/listar') ?>' class='btn btn-danger' id='btnCancelar'>Cancelar</a>
            </div>
            <div>
                <label><?php echo IssetOr($rpta, ''); ?></label>
            </div>
        </div>
    </form>
</div>