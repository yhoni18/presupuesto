<form id='frmUsuUpdate' action='' class='reg_form' method='post' style='padding: 15px;'>
    <div class='reg_form_body'>
        <div class='form_title'>
            <span class='h1'>Usuario #<?php if (isset($usu_row)) {
                    echo $usu_row['usu_cod'];
                } ?></span>
        </div>
        <hr class='separator'/>
        <table class='wy-form-full' style='width: 50%;'>
            <tr hidden>
                <td><label>Usuario cod:</label>
                </td>
                <td><input type='text' class='form-control' id='txtUsuUsuarioCod' name='txtUsuUsuarioCod'
                           value='<?php if (isset($usu_row)) {
                               echo $usu_row['usu_cod'];
                           } ?>' maxlength='10' placeholder='0' autocomplete='off'>
                </td>
            </tr>
            <tr>
                <td><label>Empleado: </label>
                </td>
                <td><select class='form-control' id='txtUsuEmpCodigo' name='txtUsuEmpCodigo' title=''>
                        <option value='0'>(Seleccione)</option>
                        <?php foreach ($emp_list as $emp_row) { ?>
                            <option value='<?= "$emp_row[emp_codigo]" ?>'
                                <?php if (isset($usu_row)) {
                                  echo  selectIf($usu_row['emp_codigo'] == $emp_row['emp_codigo']);
                                } ?>>
                                <?= "$emp_row[emp_nombre] $emp_row[emp_ape_pat] $emp_row[emp_ape_mat]"; ?>
                            </option>
                        <?php } ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Rol:</label>
                </td>
                <td><select class='form-control' id='txtUsuRolCod' name='txtUsuRolCod' title=''>
                        <option value='0'>(Seleccione)</option>
                        <?php foreach ($rol_list as $rol_row) { ?>
                            <option value='<?= "$rol_row[rol_cod]" ?>'
                                <?php if (isset($usu_row)) {
                                   echo selectIf($usu_row['rol_cod'] == $rol_row['rol_cod']);
                                } ?>>
                                <?= "$rol_row[rol_nombre]"; ?>
                            </option>
                        <?php } ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Nombre:</label>
                </td>
                <td><input type='text' class='form-control' id='txtUsuNombre' name='txtUsuNombre'
                           value='<?php if (isset($usu_row)) {
                               echo htmlspecial($usu_row['usu_nombre']);
                           } ?>' maxlength='50' placeholder='Ingrese nombre de usuario' autocomplete='off'>
                </td>
            </tr>

            <tr <?php if (isset($usu_row)) {
                echo $usu_row['usu_cod'] > 0 ? 'hidden' : '';
            } ?>>
                <td><label>Clave:</label>
                </td>
                <td><input type='text' class='form-control' id='txtUsuClave' name='txtUsuClave'
                           value='' maxlength='50' placeholder='Ingrese clave' autocomplete='off'>
                </td>
            </tr>

            <tr hidden>
                <td><label>Ultimo acceso:</label>
                </td>
                <td><input type='text' class='form-control' id='txtUsuUltimoAcceso' name='txtUsuUltimoAcceso'
                           value='<?php if (isset($usu_row)) {
                               echo FormatDate($usu_row['usu_ultimo_acceso']);
                           } ?>' maxlength='10' placeholder='00/00/0000' autocomplete='off'>
                </td>
            </tr>
            <tr hidden>
                <td><label>Situacion:</label>
                </td>
                <td><input type='text' class='form-control' id='txtUsuSituacion' name='txtUsuSituacion'
                           value='<?php if (isset($usu_row)) {
                               echo htmlspecial($usu_row['usu_situacion']);
                           } ?>' maxlength='1' placeholder='Ingrese situacion' autocomplete='off'>
                </td>
            </tr>
        </table>
        <hr class='separator tmarg15'/>
        <div class='form_foot'>
            <input type="submit" class='btn btn-primary' name='btnRegistrar' value='Registrar'>
            <a href='<?php echo site_url('usuario/listar') ?>' class='btn btn-light' id='btnCancelar'>Cancelar</a>
        </div>
    </div>
</form>