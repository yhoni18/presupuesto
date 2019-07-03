- volcado de phpMyAdmin SQL
- versión 4.8.2
- https://www.phpmyadmin.net/
-
- Servidor: 127.0.0.1
- Tiempo de generación: 28-06-2019 a las 02:18:13
- Versión del servidor: 10.1.34-MariaDB
- Versión de PHP: 5.6.37

SET SQL_MODE =  " NO_AUTO_VALUE_ON_ZERO " ;
SET AUTOCOMMIT =  0 ;
COMENZAR  LA TRANSACCIÓN ;
SET time_zone =  " +00: 00 " ;


/ * ! 40101 SET @OLD_CHARACTER_SET_CLIENT = @@ CHARACTER_SET_CLIENT * / ;
/ * ! 40101 SET @OLD_CHARACTER_SET_RESULTS = @@ CHARACTER_SET_RESULTS * / ;
/ * ! 40101 SET @OLD_COLLATION_CONNECTION = @@ COLLATION_CONNECTION * / ;
/ * ! 40101 SET NAMES utf8mb4 * / ;

-
- Base de datos: `bd_presupuesto`
-

DELIMITADOR $$
-
- Procedimientos
-
DROP PROCEDIMIENTO SI  EXISTE  ` PA_actividad_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_actividad_x_Cod ` ( EN  ` p_act_cod `  INT ( 11 ))   COMENZAR
SELECT  ` act_cod ` , ` act_descripcion ` , ` act_costo_total ` , ` pres_cod `
DE  ` Actividad `
DONDE  ` act_cod `  = p_act_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_almacen ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_almacen ` ( EN  ` p_alm_codigo `  INT ( 11 ), IN  ` p_alm_nombre `  VARCHAR ( 45 ), IN  ` p_alm_direccion `  VARCHAR ( 100 ))   COMENZAR
ACTUALIZACIÓN  ` almacen ` 
SET  ` alm_nombre `  = p_alm_nombre, ` alm_direccion `  = p_alm_direccion
DONDE  ` alm_codigo `  = p_alm_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_categoria ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_categoria ` ( EN  ` p_cat_cod `  INT ( 11 ), IN  ` p_cat_nombre `  CHAR ( 8 ), EN  ` p_cat_estado `  TINYINT )   COMENZAR
ACTUALIZACIÓN  ` categoria ` 
SET  ` cat_nombre `  = p_cat_nombre, ` cat_estado `  = p_cat_estado
DONDE  ` cat_cod `  = p_cat_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_cliente ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_cliente ` ( EN  ` p_cli_codigo `  INT ( 11 ), IN  ` p_cli_razon_social `  VARCHAR ( 45 ), IN  ` p_cli_ruc `  VARCHAR ( 45 ), IN  ` p_cli_direccion `  VARCHAR ( 45 ) , EN  ` p_cli_telefono`  CHAR ( 9 ), EN  ` p_cli_email `  VARCHAR ( 100 ))   COMENZAR
ACTUALIZACIÓN  ` cliente ' 
SET  ` cli_razon_social `  = p_cli_razon_social, ` cli_ruc `  = p_cli_ruc, ` cli_direccion `  = p_cli_direccion, ` cli_telefono `  = p_cli_telefono,
` Cli_email `  = p_cli_email
DONDE  ` cli_codigo `  = p_cli_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_empleado ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_empleado ` ( EN  ` p_emp_codigo `  INT ( 11 ), IN  ` p_emp_nombre `  VARCHAR ( 45 ), IN  ` p_emp_ape_pat `  VARCHAR ( 45 ), IN  ` p_emp_ape_mat `  VARCHAR ( 45 ) , EN  ` p_emp_direccion`  VARCHAR ( 45 ), IN  ` p_emp_telefono `  CHAR ( 9 ), EN  ` p_emp_fecha_fin_trabajo `  DATETIME , IN  ` p_emp_estado `  TINYINT , IN  ` p_emp_sexo `  TINYINT , IN  ` p_tdoc_cod `  INT ( 11 ), IN  ` p_emp_numero_doc `  CHAR ( 12 ) , EN  ` p_emp_correo ` VARCHAR ( 50 ))   COMENZAR
ACTUALIZACIÓN  ` empleado ` 
SET  ` emp_nombre `  = p_emp_nombre, ` emp_ape_pat `  = p_emp_ape_pat, ` emp_ape_mat `  = p_emp_ape_mat, ` emp_direccion `  = p_emp_direccion,
` Emp_telefono `  = p_emp_telefono,   ` emp_fecha_fin_trabajo `  = p_emp_fecha_fin_trabajo, ` emp_estado `  = p_emp_estado,
` Emp_sexo `  = p_emp_sexo, ` tdoc_cod `  = p_tdoc_cod, ` emp_numero_doc `  = p_emp_numero_doc, ` emp_correo `  = p_emp_correo
DONDE  ` emp_codigo `  = p_emp_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_marca ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_marca ` ( EN  ` p_mar_codigo `  INT ( 11 ), IN  ` p_mar_nombre `  VARCHAR ( 45 ), IN  ` p_mar_estado `  CHAR ( 8 ))   COMENZAR
ACTUALIZACIÓN  ` marca ` 
SET  ` mar_nombre `  = p_mar_nombre, ` mar_estado `  = p_mar_estado
DONDE  ` mar_codigo `  = p_mar_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_orden_ejecucion ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_orden_ejecucion ` ( EN  ` p_ord_cod `  INT ( 11 ), IN  ` p_ord_num_orden `  INT ( 11 ) sin firmar, IN  ` p_ord_fecha `  FECHA , EN  ` p_ord_odm `  INT ( 11 ) sin firmar, EN  ` p_ord_emisor `  CHAR( 100 ), EN  ` p_pres_cod `  INT ( 11 ), IN  ` p_ord_estado `  CHAR ( 3 ))   COMENZAR
ACTUALIZACIÓN  ` orden_ejecucion ` 
SET  ` ord_num_orden `  = p_ord_num_orden, ` ord_fecha `  = p_ord_fecha, ` ord_odm `  = p_ord_odm, ` ord_emisor `  = p_ord_emisor,
` Pres_cod `  = p_pres_cod, ` ord_estado `  = p_ord_estado
DONDE  ` ord_cod `  = p_ord_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_presupuesto ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_presupuesto ` ( EN  ` p_pres_cod `  INT ( 11 ), IN  ` p_pres_fecha_emision `  FECHA , EN  ` p_pres_fecha_recepcion `  FECHA , EN  ` p_pres_forma_pago `  CHAR ( 30 ), IN  ` p_pres_lugar_trabajo `  VARCHAR (45 ), IN  ` p_pres_estado `  VARCHAR ( 45 ), IN  ` p_pres_costo_mano_obra `  DECIMAL ( 8 , 2 ) sin firmar, IN  ` p_pres_costo_materiales `  DECIMAL ( 8 , 2 ), UNSIGNED EN  ` p_pres_costo_total `  DECIMAL ( 8 , 2 ) sin firmar, IN  ` p_cli_codigo `  INT ( 11 ), IN  `p_pres_encargado `  VARCHAR ( 100 ))   COMIENZO
ACTUALIZACIÓN  ` presupuesto ` 
SET  ` pres_fecha_emision `  = p_pres_fecha_emision, ` pres_fecha_recepcion `  = p_pres_fecha_recepcion, ` pres_forma_pago `  = p_pres_forma_pago, ` pres_lugar_trabajo `  = p_pres_lugar_trabajo,
` Pres_estado `  = p_pres_estado, ` pres_costo_mano_obra `  = p_pres_costo_mano_obra, ` pres_costo_materiales `  = p_pres_costo_materiales, ` pres_costo_total `  = p_pres_costo_total,
` Cli_codigo `  = p_cli_codigo, ` pres_encargado `  = p_pres_encargado
DONDE  ` pres_cod `  = p_pres_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_proveedor ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_proveedor ` ( EN  ` p_prov_cod `  INT ( 11 ), IN  ` p_prov_razon_social `  CHAR ( 100 ), EN  ` p_prov_ruc `  CHAR ( 11 ), IN  ` p_prov_direccion `  VARCHAR ( 50 ) , EN  ` p_prov_telefono`  CHAR ( 9 ), EN  ` p_prov_email `  CHAR ( 50 ))   COMENZAR
ACTUALIZACIÓN  ` Proveedor ` 
SET  ` prov_razon_social `  = p_prov_razon_social, ` prov_ruc `  = p_prov_ruc, ` prov_direccion `  = p_prov_direccion, ` prov_telefono `  = p_prov_telefono,
` Prov_email `  = p_prov_email
DONDE  ` prov_cod `  = p_prov_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_actualizar_tdocumento ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_actualizar_tdocumento ` ( EN  ` t_tdoc_cod `  INT , IN  ` t_tdoc_nombre `  CHAR ( 50 ), IN  ` t_tdoc_estado `  TINYINT )   COMIENZO
ACTUALIZACIÓN  ` tipo_documento ` 
SET  ` tdoc_nombre `  = t_tdoc_nombre, ` tdoc_estado `  = t_tdoc_estado
DONDE  ` tdoc_cod `  = t_tdoc_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Actualizar_unidad_medida ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Actualizar_unidad_medida ` ( EN  ` p_uni_codigo `  INT ( 11 ), IN  ` p_uni_descripcion `  VARCHAR ( 45 ), IN  ` p_uni_estado `  CHAR ( 8 ))   COMENZAR
ACTUALIZACIÓN  ` unidad_medida ` 
SET  ` uni_descripcion `  = p_uni_descripcion, ` uni_estado `  = p_uni_estado
DONDE  ` uni_codigo `  = p_uni_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_almacen_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_almacen_x_Cod ` ( EN  ` p_alm_codigo `  INT ( 11 ))   COMENZAR
SELECT  ` alm_codigo ` , ` alm_nombre ` , ` alm_direccion `
DE  ` almacen `
DONDE  ` alm_codigo `  = p_alm_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_almacen ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_almacen ` ( EN  ` p_alm_codigo `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` almacen `
DONDE  ` alm_codigo `  = p_alm_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_categoria ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_categoria ` ( EN  ` p_cat_cod `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` categoria `
DONDE  ` cat_cod `  = p_cat_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_cliente ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_cliente ` ( EN  ` p_cli_codigo `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` cliente `
DONDE  ` cli_codigo `  = p_cli_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_empleado ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_empleado ` ( EN  ` p_emp_codigo `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` empleado `
DONDE  ` emp_codigo `  = p_emp_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_marca ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_marca ` ( EN  ` p_mar_codigo `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` marca `
DONDE  ` mar_codigo `  = p_mar_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_orden_ejecucion ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_orden_ejecucion ` ( EN  ` p_ord_cod `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` orden_ejecucion `
DONDE  ` ord_cod `  = p_ord_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_presupuesto ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_presupuesto ` ( EN  ` p_pres_cod `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` presupuesto `
DONDE  ` pres_cod `  = p_pres_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_borrar_producto ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_borrar_producto ` ( EN  ` Identificación del `  INT )   EMPEZAR
BORRAR  DE producto DONDE prod_cod = Identificación;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_proveedor ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_proveedor ` ( EN  ` p_prov_cod `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` Proveedor `
DONDE  ` prov_cod `  = p_prov_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_borrar_tdoc ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_borrar_tdoc ` ( EN  ` t_tdoc_cod `  INT )   EMPEZAR
BORRAR  DE  ` tipo_documento `
DONDE  ` tdoc_cod `  = t_tdoc_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Borrar_unidad_medida ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Borrar_unidad_medida ` ( EN  ` p_uni_codigo `  INT ( 11 ))   COMENZAR
BORRAR  DE  ` unidad_medida `
DONDE  ` uni_codigo `  = p_uni_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_categoria_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_categoria_x_Cod ` ( EN  ` p_cat_cod `  INT ( 11 ))   COMENZAR
SELECT  ` cat_cod ` , ` cat_nombre ` , ` cat_estado `
DE  ` categoria `
DONDE  ` cat_cod `  = p_cat_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_cliente_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_cliente_x_Cod ` ( EN  ` p_cli_codigo `  INT ( 11 ))   COMENZAR
SELECT  ` cli_codigo ` , ` cli_razon_social ` , ` cli_ruc ` , ` cli_direccion ` ,
` Cli_telefono ` , ` cli_email `
DE  ` cliente `
DONDE  ` cli_codigo `  = p_cli_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_empleado_listCbo ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_empleado_listCbo ` ( EN  ` _emp_codigo `  INT ( 11 ))   COMENZAR
	SELECCIONE emp_codigo, emp_nombre, emp_ape_pat, emp_ape_mat, emp_direccion, emp_telefono,
		   emp_fecha_inicio_trabajo, emp_fecha_fin_trabajo, emp_estado, emp_sexo,
		   tdoc . tdoc_cod , tdoc_nombre, emp_numero_doc
	De empleado emp
		ÚNETE IZQUIERDO tipo_documento tdoc ON  emp . tdoc_cod  =  tdoc . tdoc_cod
	DONDE  emp . emp_estado  =  1  OR ( emp . emp_codigo  = _emp_codigo);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_empleado_Por_Codigo ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_empleado_Por_Codigo ` ( EN  ` p_emp_codigo `  INT ( 11 ))   COMENZAR
SELECT  ` emp_codigo ` , ` emp_nombre ` , ` emp_ape_pat ` , ` emp_ape_mat ` ,
` Emp_direccion ` , ` emp_telefono ` , ` emp_fecha_inicio_trabajo ` , ` emp_fecha_fin_trabajo ` ,
` Emp_estado ` , ` emp_sexo ` , ` tdoc_cod ` , ` emp_numero_doc ` ,
` Emp_correo `
DE  ` empleado `
DONDE  ` emp_codigo `  = p_emp_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Listar_categoria ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Listar_categoria ` ( EN  ` buscar `  VARCHAR ( 50 ))   COMENZAR
SELECCIONAR  *  DE categoria DONDE cat_nombre ME GUSTA buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_listar_cliente ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_listar_cliente ` ( EN  ` buscar `  CHAR ( 50 ))   COMIENZO
SELECCIONAR  *  DESDE el cliente DONDE cli_razon_social LIKE buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Listar_compra ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Listar_compra ` ()   EMPEZAR
SELECT  ` comp_cod ` , ` comp_fecha ` , ` comp_costo_total ` , ` comp_estado ` ,
` Prov_cod `
DE  ` compra ` ;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` Pa_Listar_empleado ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` Pa_Listar_empleado ` ( EN  ` buscar `  CHAR ( 50 ))   COMENZAR
SELECCIONA  *  DESDE el empleado DONDE emp_nombre ME GUSTA buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Listar_marca ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Listar_marca ` ( EN  ` buscar `  VARCHAR ( 50 ))   COMENZAR
SELECCIONAR  *  DE marca DONDE mar_nombre ME GUSTA buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_listar_marca_estado ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_listar_marca_estado ` ( EN  ` estado `  TINYINT ( 1 ), EN  ` buscar `  VARCHAR ( 50 ))   COMENZAR
SELECCIONA  *  DESDE marca DONDE mar_estado = estado Y mar_nombre ME GUSTA buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Listar_presupuesto ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Listar_presupuesto ` ()   EMPEZAR
SELECT  ` pres_cod ` , ` pres_fecha_emision ` , ` pres_fecha_recepcion ` , ` pres_forma_pago ` ,
` Pres_lugar_trabajo ` , ` pres_estado ` , ` pres_costo_mano_obra ` , ` pres_costo_materiales ` ,
` Pres_costo_total ` , ` cli_codigo ` , ` pres_encargado `
DE  ` presupuesto ` ;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Listar_producto ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Listar_producto ` ()   EMPEZAR
SELECT  ` p ' . ` Prod_cod ` , ` p ' . ` Prod_nombre_comercial ` , ` p ' . ` Prod_precio_compra ` , ` p ' . ` Prod_precio_venta ` , ` p ' . ` Prod_cant ` ,
` P ' . ` Mar_codigo ` , ` p ' . ` Cat_codigo ` , ` p ' . ` Uni_codigo ` , ` p ' . ` Alm_codigo ` ,
m . mar_nombre , c . cat_nombre , a . alm_nombre , u . uni_descripcion
DE  ` producto `  ` p '  INNER JOIN marca m EN  p . mar_codigo  =  m . mar_codigo
INNER JOIN categoria c SOBRE  p . cat_codigo  =  c . cat_cod
INTERIOR UNIRSE almacen a ON  a . alm_codigo  =  p . alm_codigo
INNER JOIN unidad_medida u EN  p . uni_codigo  =  u . uni_codigo ;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` Pa_listar_proveedor ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` Pa_listar_proveedor ` ( EN  ` buscar `  CHAR ( 50 ))   COMENZAR
SELECCIONA  *  DESDE el proveedor DONDE prov_razon_social LIKE buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Listar_unidad ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Listar_unidad ` ( EN  ` buscar `  CHAR ( 50 ))   COMENZAR
SELECCIONA  *  DESDE unidad_medida DONDE uni_descripcion LIKE buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_lista_almacen ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_lista_almacen ` ( EN  ` buscar `  VARCHAR ( 50 ))   COMIENZO
SELECCIONAR  *  DE almacen DONDE alm_nombre COMO buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_lista_categoria_estado ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_lista_categoria_estado ` ( EN  ` estado `  TINYINT ( 1 ), EN  ` buscar `  VARCHAR ( 50 ))   COMENZAR
SELECCIONA  *  DE categoria DONDE cat_estado =  1  Y cat_nombre ME GUSTA buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_lista_tdocumento ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_lista_tdocumento ` ( EN  ` buscar `  CHAR ( 50 ))   COMIENZO
SELECCIONA  *  DESDE tipo_documento DONDE tdoc_cod ME GUSTA buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_lista_unidades ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_lista_unidades ` ( EN  ` buscar `  VARCHAR ( 50 ), IN  ` estado `  TINYINT ( 1 ))   COMENZAR
SELECT  *  FROM unidad_medida WHERE uni_estado = estado AND uni_descripcion LIKE buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_marca_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_marca_x_Cod ` ( EN  ` p_mar_codigo `  INT ( 11 ))   COMENZAR
SELECT  ` mar_codigo ` , ` mar_nombre ` , ` mar_estado `
DE  ` marca `
DONDE  ` mar_codigo `  = p_mar_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_orden_ejecucion_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_orden_ejecucion_x_Cod ` ( EN  ` p_ord_cod `  INT ( 11 ))   COMENZAR
SELECT  ` ord_cod ` , ` ord_num_orden ` , ` ord_fecha ` , ` ord_odm ` ,
` Ord_emisor ` , ` pres_cod ` , ` ord_estado `
DE  ` orden_ejecucion `
DONDE  ` ord_cod `  = p_ord_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_presupuesto_listar ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_presupuesto_listar ` ( EN  ` buscar `  VARCHAR ( 70 ))   EMPEZAR
SELECCIONAR  * , c . cli_razon_social
De presupuesto p
INTERNACIONAL ÚNASE al cliente c ON  p . cli_codigo  =  c . cli_codigo
DONDE  c . cli_razon_social  LIKE buscar O  p . pres_lugar_trabajo  ME GUSTA buscar
O  p . pres_encargado  LIKE buscar;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_presupuesto_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_presupuesto_x_Cod ` ( EN  ` p_pres_cod `  INT ( 11 ))   COMENZAR
SELECT  ` pres_cod ` , ` pres_fecha_emision ` , ` pres_fecha_recepcion ` , ` pres_forma_pago ` ,
` Pres_lugar_trabajo ` , ` pres_estado ` , ` pres_costo_mano_obra ` , ` pres_costo_materiales ` ,
` Pres_costo_total ` , ` cli_codigo ` , ` pres_encargado `
DE  ` presupuesto `
DONDE  ` pres_cod `  = p_pres_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_producto_actualizar ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_producto_actualizar ` ( EN  ` prod_codigo `  INT , IN  ` descripcion `  VARCHAR ( 150 ), EN  ` mar_cod `  INT , IN  ` cat_cod `  INT , IN  ` uni_cod `  INT , IN  ` alm_cod `  INT, IN  ` prov_cod `  INT , IN  ` precio_compra `  DECIMAL ( 8 , 2 ), EN  ` precio_venta `  DECIMAL ( 8 , 2 ), EN  ` prod_cant `  DECIMAL ( 8 , 0 ))   COMIENZO
ACTUALIZACIÓN producto SET
prod_nombre_comercial = descripcion,
mar_codigo = mar_cod,
cat_codigo = cat_cod,
uni_codigo = uni_cod,
alm_codigo = alm_cod,
prov_cod    = prov_cod,
prod_precio_compra = precio_compra,
prod_precio_venta = precio_venta,
prod_cant = prod_cant DONDE prod_cod = prod_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_producto_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_producto_x_Cod ` ( EN  ` p_prod_cod `  INT ( 11 ))   COMENZAR
SELECT  ` prod_cod ` , ` prod_nombre_comercial ` , ` prod_precio_compra ` , ` prod_precio_venta ` , ` prod_cant ` ,
` Mar_codigo ` , ` cat_codigo ` , ` uni_codigo ` , ` alm_codigo ` , ` prov_cod `
DE  ` producto `
DONDE  ` prod_cod `  = p_prod_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` Pa_proveedor_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` Pa_proveedor_x_Cod ` ( EN  ` p_prov_cod `  INT )   COMENZAR
SELECT  ` prov_cod ` , ` prov_razon_social ` , ` prov_ruc ` , ` prov_direccion ` , ` prov_telefono ` , ` prov_email `
DE  ` Proveedor `
DONDE  ` prov_cod `  = p_prov_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_actividad ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_actividad ` ( EN  ` p_act_cod `  INT ( 11 ), IN  ` p_act_descripcion `  VARCHAR ( 100 ), EN  ` p_act_costo_total `  DECIMAL ( 8 , 2 ), EN  ` p_pres_cod `  INT ( 11 )   COMENZAR
INSERTAR  EN  ` Actividad ` ( ` act_cod ` , ` act_descripcion ` , ` act_costo_total ` , ` pres_cod ` )
VALORES (p_act_cod, p_act_descripcion, p_act_costo_total, p_pres_cod);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ' PA_Registrar_actividad_empleado ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_actividad_empleado ` ( EN  ` p_aemp_codigo `  INT ( 11 ), IN  ` p_aemp_cantidad_dias `  TINYINT ( 3 ), UNSIGNED EN  ` p_aemp_pago_dia `  DECIMAL ( 8 , 2 ) sin firmar, IN  ` p_aemp_total `  DECIMAL ( 8 ,2 ) sin firmar, IN  ` p_emp_cod `  INT ( 11 ), IN  ` p_act_cod `  INT ( 11 ))   COMENZAR
INSERTAR  EN  ` actividad_empleado ` ( ` aemp_codigo ` , ` aemp_cantidad_dias ` , ` aemp_pago_dia ` , ` aemp_total ` ,
` Emp_cod ` , ` act_cod ` )
VALORES (p_aemp_codigo, p_aemp_cantidad_dias, p_aemp_pago_dia, p_aemp_total,
p_emp_cod, p_act_cod);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_actividad_productos ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_actividad_productos ` ( EN  ` p_actpro_cod `  INT ( 11 ), IN  ` p_act_cod `  INT ( 11 ), IN  ` p_prod_cod `  INT ( 11 ), IN  ` p_actpro_precio `  DECIMAL ( 8 , 2 ) NO  FIRMADO, EN `p_actpro_cantidad `  INT ( 11 ) sin firmar, IN  ` p_actpro_total `  DECIMAL ( 8 , 2 ) UNSIGNED)   COMIENZO
INSERTAR  EN  ` actividad_productos ` ( ` actpro_cod ` , ` act_cod ` , ` prod_cod ` , ` actpro_precio ` ,
` Actpro_cantidad ` , ` actpro_total ` )
VALORES (p_actpro_cod, p_act_cod, p_prod_cod, p_actpro_precio,
p_actpro_cantidad, p_actpro_total);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_almacen ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_almacen ` ( EN  ` p_alm_nombre `  VARCHAR ( 45 ), IN  ` p_alm_direccion `  VARCHAR ( 100 ))   COMENZAR
INSERTAR  EN  ` almacen ` ( ` alm_nombre ` , ` alm_direccion ` )
VALORES (p_alm_nombre, p_alm_direccion);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_categoria ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_Registrar_categoria ` ( EN  ` p_cat_nombre `  CHAR ( 8 ), EN  ` p_cat_estado `  TINYINT )   COMENZAR
INSERTAR  EN  ` categoria ` ( ` cat_nombre ` , ` cat_estado ` )
VALORES (p_cat_nombre, p_cat_estado);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_cliente ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_cliente ` ( EN  ` p_cli_razon_social `  VARCHAR ( 45 ), IN  ` p_cli_ruc `  VARCHAR ( 45 ), IN  ` p_cli_direccion `  VARCHAR ( 45 ), IN  ` p_cli_telefono `  CHAR ( 9 ) , EN  ` p_cli_email`  VARCHAR ( 100 ))   COMENZAR
INSERTAR  EN  ` cliente ' ( ` cli_razon_social ` , ` cli_ruc ` , ` cli_direccion ` ,
` Cli_telefono ` , ` cli_email ` )
VALORES (p_cli_razon_social, p_cli_ruc, p_cli_direccion,
p_cli_telefono, p_cli_email);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_compra ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_compra ` ( EN  ` p_comp_cod `  INT ( 11 ), IN  ` p_comp_fecha `  FECHA , EN  ` p_comp_costo_total ` DOBLE ( 8 , 2 ), UNSIGNED EN  ` p_comp_estado `  CHAR ( 12 ) , EN  ` p_prov_cod ` INT ( 11 ))   COMENZAR
INSERTAR  EN  ` compra ` ( ` comp_cod ` , ` comp_fecha ` , ` comp_costo_total ` , ` comp_estado ` ,
` Prov_cod ` )
VALORES (p_comp_cod, p_comp_fecha, p_comp_costo_total, p_comp_estado,
p_prov_cod);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_conformidad ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_conformidad ` ( EN  ` p_conf_cod `  INT ( 11 ), IN  ` p_conf_fecha_inicio `  FECHA , EN  ` p_conf_fecha_fin `  FECHA , EN  ` p_conf_estado `  CHAR ( 3 ), EN  ` p_conf_act_conformidad `  INT ( 11) Sin firmar, IN  ` p_pres_cod `  INT ( 11 ))   COMIENZO
INSERTAR  EN  ` conformity ` ( ` conf_cod ` , ` conf_fecha_inicio ` , ` conf_fecha_fin ` , ` conf_estado ` ,
` Conf_act_conformidad ` , ` pres_cod ` )
VALORES (p_conf_cod, p_conf_fecha_inicio, p_conf_fecha_fin, p_conf_estado,
p_conf_act_conformidad, p_pres_cod);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_empleado ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_empleado ` ( EN  ` p_emp_nombre `  VARCHAR ( 45 ), IN  ` p_emp_ape_pat `  VARCHAR ( 45 ), IN  ` p_emp_ape_mat `  VARCHAR ( 45 ), IN  ` p_emp_direccion `  VARCHAR ( 45 ) , EN  ` p_emp_telefono`  CHAR ( 9 ), EN  ` p_emp_fecha_inicio_trabajo `  FECHA , EN  ` p_emp_sexo `  CHAR ( 1 ), EN  ` p_tdoc_cod `  INT ( 11 ), IN  ` p_emp_numero_doc `  CHAR ( 12 ), IN  ` p_emp_correo `  VARCHAR ( 50 ))   COMIENZO
INSERTAR  EN  ` empleado ` ( ` emp_nombre ` , ` emp_ape_pat ` , ` emp_ape_mat ` ,
` Emp_direccion ` , ` emp_telefono ` , ` emp_fecha_inicio_trabajo ` ,
` Emp_sexo ` , ` tdoc_cod ` , ` emp_numero_doc ` ,
` Emp_correo ` )
VALORES (p_emp_nombre, p_emp_ape_pat, p_emp_ape_mat,
p_emp_direccion, p_emp_telefono, p_emp_fecha_inicio_trabajo, 
p_emp_sexo, p_tdoc_cod, p_emp_numero_doc, 
p_emp_correo);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_marca ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_marca ` ( EN  ` p_mar_nombre `  VARCHAR ( 45 ), IN  ` p_mar_estado `  CHAR ( 8 ))   COMENZAR
INSERTAR  EN  ` marca ` ( ` mar_nombre ` , ` mar_estado ` )
VALORES (p_mar_nombre, p_mar_estado);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_orden_ejecucion ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_orden_ejecucion ` ( EN  ` p_ord_cod `  INT ( 11 ), IN  ` p_ord_num_orden `  INT ( 11 ) sin firmar, IN  ` p_ord_fecha `  FECHA , EN  ` p_ord_odm `  INT ( 11 ) sin firmar, EN  ` p_ord_emisor `  CHAR( 100 ), EN  ` p_pres_cod `  INT ( 11 ), IN  ` p_ord_estado `  CHAR ( 3 ))   COMENZAR
INSERTAR  EN  ` orden_ejecucion ` ( ` ord_cod ` , ` ord_num_orden ` , ` ord_fecha ` , ` ord_odm ` ,
` Ord_emisor ` , ` pres_cod ` , ` ord_estado ` )
VALORES (p_ord_cod, p_ord_num_orden, p_ord_fecha, p_ord_odm,
p_ord_emisor, p_pres_cod, p_ord_estado);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_presupuesto ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_presupuesto ` ( EN  ` p_pres_cod `  INT ( 11 ), IN  ` p_pres_fecha_emision `  FECHA , EN  ` p_pres_fecha_recepcion `  FECHA , EN  ` p_pres_forma_pago `  CHAR ( 30 ), IN  ` p_pres_lugar_trabajo `  VARCHAR (45 ), IN  ` p_pres_estado `  VARCHAR ( 45 ), IN  ` p_pres_costo_mano_obra `  DECIMAL ( 8 , 2 ) sin firmar, IN  ` p_pres_costo_materiales `  DECIMAL ( 8 , 2 ), UNSIGNED EN  ` p_pres_costo_total `  DECIMAL ( 8 , 2 ) sin firmar, IN  ` p_cli_codigo `  INT ( 11 ), IN  `p_pres_encargado `  VARCHAR ( 100 ))   COMIENZO
INSERTAR  EN  ` presupuesto ` ( ` pres_cod ` , ` pres_fecha_emision ` , ` pres_fecha_recepcion ` , ` pres_forma_pago ` ,
` Pres_lugar_trabajo ` , ` pres_estado ` , ` pres_costo_mano_obra ` , ` pres_costo_materiales ` ,
` Pres_costo_total ` , ` cli_codigo ` , ` pres_encargado ` )
VALORES (p_pres_cod, p_pres_fecha_emision, p_pres_fecha_recepcion, p_pres_forma_pago,
p_pres_lugar_trabajo, p_pres_estado, p_pres_costo_mano_obra, p_pres_costo_materiales, 
p_pres_costo_total, p_cli_codigo, p_pres_encargado);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_producto ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_producto ` ( EN  ` p_prod_nombre_comercial `  VARCHAR ( 150 ), EN  ` p_prod_precio_compra `  DECIMAL ( 8 , 2 ) sin firmar, IN  ` p_prod_precio_venta `  DECIMAL ( 8 , 2 ) sin firmar, IN  ` p_prod_cant `  DECIMAL( 8 , 0 ) sin firmar, IN  ` p_mar_codigo `  INT ( 11 ), IN  ` p_cat_codigo `  INT ( 11 ), IN  ` p_uni_codigo `  INT ( 11 ), IN  ` p_alm_codigo `  INT ( 11 ), IN  ` p_prov_codigo `  INT )   COMIENZO
INSERTAR  EN  ` producto ` ( ` prod_nombre_comercial ` , ` prod_precio_compra ` , ` prod_precio_venta ` , ` prod_cant ` ,
` Mar_codigo ` , ` cat_codigo ` , ` uni_codigo ` , ` alm_codigo ` , ` prov_cod ` )
VALORES (p_prod_nombre_comercial, p_prod_precio_compra, p_prod_precio_venta, p_prod_cant,
p_mar_codigo, p_cat_codigo, p_uni_codigo, p_alm_codigo, p_prov_codigo);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_proveedor ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_proveedor ` ( EN  ` p_prov_razon_social `  CHAR ( 100 ), EN  ` p_prov_ruc `  CHAR ( 11 ), IN  ` p_prov_direccion `  VARCHAR ( 50 ), IN  ` p_prov_telefono `  CHAR ( 9 ) , EN  ` p_prov_email`  CHAR ( 50 ))   COMENZAR
INSERTAR  EN  ` Proveedor ` ( ` prov_razon_social ` , ` prov_ruc ` , ` prov_direccion ` ,
` Prov_telefono ` , ` prov_email ` )
VALORES (p_prov_razon_social, p_prov_ruc, p_prov_direccion,
p_prov_telefono, p_prov_email);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_tipo_documento ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_tipo_documento ` ( EN  ` p_tdoc_nombre `  CHAR ( 20 ), IN  ` p_tdoc_estado `  TINYINT )   COMIENZO
INSERTAR  EN  ` tipo_documento ` ( ` tdoc_nombre ` , ` tdoc_estado ` )
VALORES (p_tdoc_nombre, p_tdoc_estado);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_Registrar_unidad_medida ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` PA_Registrar_unidad_medida ` ( EN  ` p_uni_descripcion `  VARCHAR ( 45 ), IN  ` p_uni_estado `  CHAR ( 8 ))   COMENZAR
INSERTAR  EN  ` unidad_medida ` ( ` uni_descripcion ` , ` uni_estado ` )
VALORES (p_uni_descripcion, p_uni_estado);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` Pa_registra_prod ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` Pa_registra_prod ` ( EN  ` p_prod_nombre_comercial `  VARCHAR ( 50 ), IN  ` p_prod_precio_compra `  DECIMAL ( 8 , 2 ), EN  ` p_prod_precio_venta `  DECIMAL ( 8 , 2 ), EN  ` p_prod_cant `  DECIMAL ( 8, 0 ), EN  ` p_mar_codigo `  INT , IN  ` p_cat_codigo `  INT , IN  ` p_uni_codigo `  INT , IN  ` p_alm_codigo `  INT , IN  ` p_prov_codigo `  INT )   COMENZAR
INSERTAR  EN  ` producto ` ( ` prod_nombre_comercial ` , ` prod_precio_compra ` , ` prod_precio_venta ` , ` prod_cant ` ,
` Mar_codigo ` , ` cat_codigo ` , ` uni_codigo ` , ` alm_codigo ` , ` prov_cod ` )
VALORES (p_prod_nombre_comercial, p_prod_precio_compra, p_prod_precio_venta, p_prod_cant,
p_mar_codigo, p_cat_codigo, p_uni_codigo, p_alm_codigo, p_prov_codigo);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_activate ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_rol_activate ` ( EN  ` _rol_cod `  INT ( 11 ))   COMENZAR
	Rol de actualización
	SET rol_estado =  1
	DONDE rol_cod = _rol_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_deactivate ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_rol_deactivate ` ( EN  ` _rol_cod `  INT ( 11 ))   COMENZAR
	Rol de actualización
	SET rol_estado =  2
	DONDE rol_cod = _rol_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_delete ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_rol_delete ` ( EN  ` _rol_cod `  INT ( 11 ))   COMENZAR
	Rol de actualización
	SET rol_estado =  0
	DONDE rol_cod = _rol_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_getByID ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_rol_getByID ` ( EN  ` _rol_cod `  INT ( 11 ))   COMENZAR
	SELECCIONAR rol_cod, rol_nombre, rol_fecha_reg, rol_estado
	De rol rol
	DONDE  rol . rol_cod  = _rol_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_getRow ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_rol_getRow ` ( EN  ` _rol_cod `  INT ( 11 ))   COMENZAR
	SELECCIONAR rol_cod, rol_nombre, rol_fecha_reg, rol_estado
	De rol rol
	DONDE  rol . rol_cod  = _rol_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_insert ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_rol_insert ` ( EN  ` _rol_nombre `  VARCHAR ( 50 ), OUT  ` _rol_cod `  INT ( 11 ))   COMIENZO
	INSERTAR  EN ROL (
		rol_nombre
		rol_fecha_reg,
		rol_estado
	)
	VALORES (
		_rol_nombre,
		AHORA (),
		1
	);
	SET _rol_cod = LAST_INSERT_ID ();
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_list ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_rol_list ` ( EN  ` _buscar `  VARCHAR ( 50 ), IN  ` _rol_estado `  TINYINT UNSIGNED)   COMIENZO
	SET @aux = _buscar;
	SET _buscar =  IF (_buscar <>  ' ' , concat ( ' %' , replace (_buscar, ' ' , ' %' ), ' %' ), ' %' );

	SELECCIONAR rol_cod, rol_nombre, rol_fecha_reg, rol_estado
	De rol rol
	DONDE ( rol . Rol_nombre  ME GUSTA _buscar)
		Y  rol . rol_estado  = _rol_estado;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_listCbo ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_rol_listCbo ` ( EN  ` _rol_cod `  INT ( 11 ))   COMENZAR
	SELECCIONAR rol_cod, rol_nombre, rol_fecha_reg, rol_estado
	De rol rol
	DONDE  rol . rol_estado  =  1  O ( rol . rol_cod  = _rol_cod);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_rol_update ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_rol_update ` ( EN  ` _rol_cod `  INT ( 11 ), IN  ` _rol_nombre `  VARCHAR ( 50 ))   COMIENZO
	Rol de actualización
	SET rol_nombre = _rol_nombre
	DONDE rol_cod = _rol_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_tipo_documento_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_tipo_documento_x_Cod ` ( EN  ` p_tdoc_cod `  INT ( 11 ))   COMENZAR
SELECT  ` tdoc_cod ` , ` tdoc_nombre `
DE  ` tipo_documento `
DONDE  ` tdoc_cod `  = p_tdoc_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_unidad_medida_x_Cod ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_unidad_medida_x_Cod ` ( EN  ` p_uni_codigo `  INT ( 11 ))   COMENZAR
SELECT  ` uni_codigo ` , ` uni_descripcion ` , ` uni_estado `
DE  ` unidad_medida `
DONDE  ` uni_codigo `  = p_uni_codigo;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_UsuarioGetByNombre ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_UsuarioGetByNombre ` ( EN  ` _usu_nombre `  VARCHAR ( 50 ))   COMIENZO
		SELECCIONAR usu_cod, usu . emp_codigo , emp_nombre, emp_ape_pat, emp_ape_mat, emp_correo,
			   usu_nombre, usu . rol_cod , rol_nombre,
			   usu_ultimo_acceso, usu_fecha_reg, usu_situacion, usu_estado
		De usuario usu
				 INNER JOIN empleado emp ON  usu . emp_codigo  =  emp . emp_codigo
				 INNER JOIN rol rol EN  usu . rol_cod  =  rol . rol_cod
		DONDE usu_nombre = _usu_nombre;
	FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_UsuarioLogin ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_UsuarioLogin ` ( EN  ` _usu_nombre `  VARCHAR ( 50 ), IN  ` _usu_contrasena `  VARCHAR ( 50 ))   COMENZAR
		SELECCIONAR usu_cod, usu . emp_codigo , emp_nombre, emp_ape_pat, emp_ape_mat,
			   usu_nombre, usu . rol_cod , rol_nombre,
			   usu_ultimo_acceso, usu_fecha_reg, usu_situacion, usu_estado
		De usuario usu
				 INNER JOIN empleado emp ON  usu . emp_codigo  =  emp . emp_codigo
				 INNER JOIN rol rol EN  usu . rol_cod  =  rol . rol_cod
		DONDE usu_nombre = _usu_nombre AND usu_clave = MD5 (_usu_contrasena);
	FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_UsuarioResetearContrasena ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_UsuarioResetearContrasena ` ( EN  ` _usu_cod `  INT , IN  ` _usu_contrasena `  VARCHAR ( 32 ))   COMENZAR
		ACTUALIZAR usuario
		SET 	usu_clave = md5 (_usu_contrasena)
		DONDE   usu_cod = _usu_cod;
		SELECCIONE row_count () AS reseteado;
	FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_activate ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_usuario_activate ` ( EN  ` _usu_cod `  INT ( 11 ))   COMENZAR
	ACTUALIZAR usuario
	SET usu_estado =  1
	DONDE usu_cod = _usu_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_deactivate ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_usuario_deactivate ` ( EN  ` _usu_cod `  INT ( 11 ))   COMENZAR
	ACTUALIZAR usuario
	SET usu_estado =  2
	DONDE usu_cod = _usu_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_delete ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_usuario_delete ` ( EN  ` _usu_cod `  INT ( 11 ))   COMENZAR
	ACTUALIZAR usuario
	SET usu_estado =  0
	DONDE usu_cod = _usu_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_getByID ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_usuario_getByID ` ( EN  ` _usu_cod `  INT ( 11 ))   COMENZAR
	SELECCIONAR usu_cod, usu . emp_codigo , emp_nombre, usu_nombre, usu_clave, usu . rol_cod , rol_nombre,
		   usu_ultimo_acceso, usu_fecha_reg, usu_situacion, usu_estado
	De usuario usu
		INNER JOIN empleado emp ON  usu . emp_codigo  =  emp . emp_codigo
		INNER JOIN rol rol EN  usu . rol_cod  =  rol . rol_cod
	DONDE  UD . usu_cod  = _usu_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_getRow ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_usuario_getRow ` ( EN  ` _usu_cod `  INT ( 11 ))   COMENZAR
	SELECCIONAR usu_cod, usu . emp_codigo , emp_nombre, usu_nombre, usu_clave, usu . rol_cod , rol_nombre,
		   usu_ultimo_acceso, usu_fecha_reg, usu_situacion, usu_estado
	De usuario usu
		INNER JOIN empleado emp ON  usu . emp_codigo  =  emp . emp_codigo
		INNER JOIN rol rol EN  usu . rol_cod  =  rol . rol_cod
	DONDE  UD . usu_cod  = _usu_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_usuario_info ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_usuario_info ` ( EN  ` _cod `  INT )   SELECCIONAR  u . usu_cod , u . emp_codigo , e . emp_telefono , e . emp_correo , u . usu_estado ,
concat ( e . emp_nombre , ' ' , e . emp_ape_pat ) como 
' usu_nombre'  DE usuario u INNER JOIN empleado e ON  e . emp_codigo  =  u . emp_codigo 
DONDE  u . usu_cod  = _cod $$

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_insert ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_usuario_insert ` ( EN  ` _emp_codigo `  INT ( 11 ), IN  ` _usu_nombre `  VARCHAR ( 50 ), IN  ` _usu_clave `  VARCHAR ( 50 ), IN  ` _rol_cod `  INT ( 11 ) , EN  ` _usu_situacion ` CHAR ( 1 ), OUT  ` _usu_cod `  INT ( 11 ))   COMENZAR
	INSERTAR  EN usuario (
		emp_codigo,
		usuario
		usuario_clave,
		rol_cod,
		usu_ultimo_acceso,
		usu_fecha_reg,
		usu_situacion,
		usu_estado
	)
	VALORES (
		_emp_codigo,
		_usu_nombre,
		_usu_clave,
		_rol_cod,
		NULL ,
		AHORA (),
		_usu_situacion,
		1
	);
	SET _usu_cod = LAST_INSERT_ID ();
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_list ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_usuario_list ` ( EN  ` _buscar `  VARCHAR ( 50 ), IN  ` _usu_estado `  TINYINT UNSIGNED)   COMIENZO
	SET @aux = _buscar;
	SET _buscar =  IF (_buscar <>  ' ' , concat ( ' %' , replace (_buscar, ' ' , ' %' ), ' %' ), ' %' );

	SELECCIONAR usu_cod, usu . emp_codigo , emp_nombre, usu_nombre, usu_clave, usu . rol_cod , rol_nombre,
		   usu_ultimo_acceso, usu_fecha_reg, usu_situacion, usu_estado
	De usuario usu
		INNER JOIN empleado emp ON  usu . emp_codigo  =  emp . emp_codigo
		INNER JOIN rol rol EN  usu . rol_cod  =  rol . rol_cod
	DONDE ( usu . Usu_nombre  ME GUSTA _buscar)
		;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_listCbo ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` pa_usuario_listCbo ` ( EN  ` _usu_cod `  INT ( 11 ))   COMENZAR
	SELECCIONAR usu_cod, usu . emp_codigo , emp_nombre, usu_nombre, usu_clave, usu . rol_cod , rol_nombre,
		   usu_ultimo_acceso, usu_fecha_reg, usu_situacion, usu_estado
	De usuario usu
		INNER JOIN empleado emp ON  usu . emp_codigo  =  emp . emp_codigo
		INNER JOIN rol rol EN  usu . rol_cod  =  rol . rol_cod
	DONDE  UD . usu_estado  =  1  OR ( usu . usu_cod  = _usu_cod);
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` pa_usuario_update ` $$
CREAR DEFINER = ` raíz ` @ ` localhost ` PROCEDIMIENTO ` pa_usuario_update ` ( EN  ` _usu_cod `  INT ( 11 ), IN  ` _emp_codigo `  INT ( 11 ), IN  ` _usu_nombre `  VARCHAR ( 50 ), IN  ` _rol_cod `  INT ( 11 ) , EN  ` _usu_situacion `  CHAR( 1 )   COMENZAR
	ACTUALIZAR usuario
	SET emp_codigo = _emp_codigo,
		usu_nombre = _usu_nombre,
		rol_cod = _rol_cod,
		usu_situacion = _usu_situacion
	DONDE usu_cod = _usu_cod;
FIN DE PAGO

DROP PROCEDIMIENTO SI  EXISTE  ` PA_usuario_verificar ` $$
CREAR DEFINER = ` root ' @ ' localhost ' PROCEDIMIENTO ` PA_usuario_verificar ` ( EN  ` _usuario `  CHAR ( 50 ), EN  ` _clave `  CHAR ( 50 ))   SELECT  u . usu_cod , u . emp_codigo , e . emp_telefono , e . emp_correo , u . usu_estado ,
concat ( e . emp_nombre , ' ' , e . emp_ape_pat ) como 
' usu_nombre'  DE usuario u INNER JOIN empleado e ON  e . emp_codigo  =  u . emp_codigo 
DONDE  u . usu_nombre  = _usuario Y  u . usu_clave  = _clave $$

Delimitador;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `actividad`
-

DROP  TABLE  IF  EXISTS  ` Actividad ` ;
CREAR  TABLA  ` Actividad ` (
  ` Act_cod `  int ( 11 ) NOT  NULL ,
  ` Act_descripcion `  varchar ( 100 ) DEFAULT NULL ,
  ` Act_costo_total `  decimal ( 8 , 2 ) DEFAULT NULL ,
  ` Pres_cod `  int ( 11 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `actividad_empleado`
-

DROP  TABLE  IF  EXISTS  ` actividad_empleado ` ;
CREAR  TABLA  ` actividad_empleado ` (
  ` Aemp_codigo `  int ( 11 ) NOT  NULL ,
  ` Aemp_cantidad_dias `  tinyint ( 3 ) DEFAULT UNSIGNED NULL ,
  ` Aemp_pago_dia `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Aemp_total `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Emp_cod `  int ( 11 ) NOT  NULL ,
  ` Act_cod `  int ( 11 ) NOT  NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `actividad_productos`
-

DROP  TABLE  IF  EXISTS  ` actividad_productos ` ;
CREATE  TABLE  ` actividad_productos ` (
  ` Actpro_cod `  int ( 11 ) NOT  NULL ,
  ` Act_cod `  int ( 11 ) DEFAULT NULL ,
  ` Prod_cod `  int ( 11 ) DEFAULT NULL ,
  ` Actpro_precio `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Actpro_cantidad `  int ( 11 ) UNSIGNED DEFAULT NULL ,
  ` Actpro_total `  decimal ( 8 , 2 ) DEFAULT UNSIGNED NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `almacen`
-

DROP  TABLE  IF  EXISTS  ` almacen ` ;
CREAR  TABLA  ` almacen ` (
  ` Alm_codigo `  int ( 11 ) NOT  NULL ,
  ` Alm_nombre `  varchar ( 45 ) NOT  NULL ,
  ` Alm_direccion `  varchar ( 100 ) NOT  NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `almacen`
-

INSERTAR  EN  ` almacen ` ( ` alm_codigo ` , ` alm_nombre ` , ` alm_direccion ` ) VALORES
( 0 , ' almacen3' , ' direccion3' ),
( 1 , ' Almacen1' , ' S / N' ),
( 2 , ' Almacen2' , ' S / N' ),
( 3 , ' Almacen4' , ' direccion4' ),
( 5 , ' almacen5' , ' almacen6' );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `categoria`
-

DROP  TABLE  IF  EXISTS  ` categoria ` ;
CREAR  TABLA  ` categoria ` (
  ` Cat_cod `  int ( 11 ) NOT  NULL ,
  ` Cat_nombre `  Char ( 8 ) NO  NULO ,
  ` Cat_estado `  tinyint ( 1 ) NO  NULO
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `categoria`
-

INSERTAR  EN  ` categoria ` ( ` cat_cod ` , ` cat_nombre ` , ` cat_estado ` ) VALORES
( 1 , ' Servicio' , 1 ),
( 2 , ' Producto' , 1 ),
( 9 , ' Material' , 0 );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `cliente`
-

DROP  TABLE  IF  EXISTS  ` cliente ' ;
CREAR  TABLA  ` cliente ' (
  ` Cli_codigo `  int ( 11 ) NOT  NULL ,
  ` Cli_razon_social `  varchar ( 45 ) NOT  NULL ,
  ` Cli_ruc `  varchar ( 45 ) DEFAULT NULL ,
  ` Cli_direccion `  varchar ( 45 ) DEFAULT NULL ,
  ` Cli_telefono `  Char ( 9 ) DEFAULT NULL ,
  ` Cli_email `  varchar ( 100 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `cliente`
-

INSERTAR  EN  ` cliente ' ( ` cli_codigo ` , ` cli_razon_social ` , ` cli_ruc ` , ` cli_direccion ` , ` cli_telefono ` , ` cli_email ` ) VALORES
( 1 , ' TESTEO3' , ' TESTEO2' , ' TESTEO2' , ' TESTEO2' , ' TESTEO2' ),
( 2 , ' Testeo' , ' 10203040604' , ' S / N' , ' 999999999' , ' testeo@hotmail.com' ),
( 3 , ' xxx' , ' xxx' , ' xxx' , ' xxx' , ' xx' );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `compra`
-

DROP  TABLE  IF  EXISTS  ` compra ` ;
CREAR  TABLA  ` compra ' (
  ` Comp_cod `  int ( 11 ) NOT  NULL ,
  ` Comp_fecha `  fecha DEFAULT NULL ,
  ` Comp_costo_total ` doble ( 8 , 2 ) DEFAULT UNSIGNED NULL ,
  ` Comp_estado `  Char ( 12 ) DEFAULT NULL ,
  ` Prov_cod `  int ( 11 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `compra_detalle`
-

DROP  TABLE  IF  EXISTS  ` compra_detalle ` ;
CREAR  TABLA  ` compra_detalle ` (
  ` Cdet_cod `  int ( 11 ) NOT  NULL ,
  ` Cdet_cantidad `  int ( 11 ) UNSIGNED DEFAULT NULL ,
  ` Cdet_total ` doble ( 8 , 2 ) DEFAULT UNSIGNED NULL ,
  ` Prod_cod `  int ( 11 ) NOT  NULL ,
  ` Comp_cod `  int ( 11 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla
-

DROP  TABLE  IF  EXISTS  ` conformity ` ;
CREAR  TABLA  ` conformity ` (
  ` Conf_cod `  int ( 11 ) NOT  NULL ,
  ` Conf_fecha_inicio `  fecha DEFAULT NULL ,
  ` Conf_fecha_fin `  fecha DEFAULT NULL ,
  ` Conf_estado `  Char ( 3 ) DEFAULT NULL ,
  ` Conf_act_conformidad `  int ( 11 ) UNSIGNED DEFAULT NULL ,
  ` Pres_cod `  int ( 11 ) NOT  NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `detalle_presupuesto`
-

DROP  TABLE  IF  EXISTS  ` detalle_presupuesto ` ;
CREAR  TABLA  ` detalle_presupuesto ` (
  ` Dpre_cod `  int ( 11 ) NOT  NULL ,
  ` Pre_cod `  int ( 11 ) DEFAULT NULL ,
  ` Pro_cod `  int ( 11 ) DEFAULT NULL ,
  ` Dpre_cantidad `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Dpre_precio `  decimal ( 8 , 2 ) DEFAULT UNSIGNED NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `empleado`
-

DROP  TABLE  IF  EXISTS  ` empleado ` ;
CREAR  TABLA  ` empleado ` (
  ` Emp_codigo `  int ( 11 ) NOT  NULL ,
  ` Emp_nombre `  varchar ( 45 ) NOT  NULL ,
  ` Emp_ape_pat `  varchar ( 45 ) NOT  NULL ,
  ` Emp_ape_mat `  varchar ( 45 ) NOT  NULL ,
  ` Emp_direccion `  varchar ( 45 ) NOT  NULL ,
  ` Emp_telefono `  Char ( 9 ) DEFAULT NULL ,
  ` Emp_fecha_inicio_trabajo `  fecha DEFAULT NULL ,
  ` Emp_fecha_fin_trabajo `  fecha DEFAULT NULL ,
  ` Emp_estado `  tinyint ( 1 ) DEFAULT ' 1' ,
  ` Emp_sexo `  tinyint ( 1 ) DEFAULT NULL ,
  ` Tdoc_cod `  int ( 11 ) DEFAULT NULL ,
  ` Emp_numero_doc `  Char ( 12 ) DEFAULT NULL ,
  ` Emp_correo `  varchar ( 50 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `empleado`
-

INSERTAR  EN  ` empleado ` ( ` emp_codigo ` , ` emp_nombre ` , ` emp_ape_pat ` , ` emp_ape_mat ` , ` emp_direccion ` , ` emp_telefono ` , ` emp_fecha_inicio_trabajo ` , ` emp_fecha_fin_trabajo ` , ` emp_estado ` , ` emp_sexo ` , ` tdoc_cod ` ,` Emp_numero_doc ` , ` emp_correo ` ) VALORES
( 1 , ' Eduardo' , ' Cruz' , ' Montenegro' , ' Nvo. Chimbote' , ' 955748771' , ' 2019-05-01' , ' 2019-12-31' , 1 , 0 , 1 , ' 47121523' , ' thewil_ed@hotmail.com' ),
( 2 , ' Yhoni' , ' Pulido' , ' Vásquez' , ' Chimbote' , ' 042585698' , ' 2019-05-01' , ' 2019-08-22' , 1 , 0 , 1 , ' 54654654' , ' yhon@hotmail.com ' ),
( 3 , ' Ingrid' , ' Principe' , ' Guerra' , ' Nvo.Chimbote' , ' 045859698' , ' 2018-08-02' , ' 2019-06-21' , 1 , 1 , 1 , ' 54545466' , ' ingrid@hotmail.com' );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `marca`
-

DROP  TABLE  IF  EXISTS  ` marca ` ;
CREAR  TABLA  ` marca ` (
  ` Mar_codigo `  int ( 11 ) NOT  NULL ,
  ` Mar_nombre `  varchar ( 45 ) DEFAULT NULL ,
  ` Mar_estado `  tinyint ( 1 ) NO  NULO
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `marca`
-

INSERTAR  EN  ` marca ` ( ` mar_codigo ` , ` mar_nombre ` , ` mar_estado ` ) VALORES
( 1 , ' prueba' , 1 ),
( 2 , ' Prueba2' , 1 ),
( 3 , ' Marcados' , 1 ),
( 6 , ' Prueba3' , 0 );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `orden_ejecucion`
-

DROP  TABLE  IF  EXISTS  ` orden_ejecucion ` ;
CREAR  TABLA  ` orden_ejecucion ` (
  ` Ord_cod `  int ( 11 ) NOT  NULL ,
  ` Ord_num_orden `  int ( 11 ) UNSIGNED DEFAULT NULL ,
  ` Ord_fecha `  fecha DEFAULT NULL ,
  ` Ord_odm `  int ( 11 ) UNSIGNED DEFAULT NULL ,
  ` Ord_emisor `  Char ( 100 ) DEFAULT NULL ,
  ` Pres_cod `  int ( 11 ) NOT  NULL ,
  ` Ord_estado `  Char ( 3 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `presupuesto`
-

DROP  TABLE  IF  EXISTS  ` presupuesto ` ;
CREAR  TABLA  ` presupuesto ` (
  ` Pres_cod `  int ( 11 ) NOT  NULL ,
  ` Pres_fecha_emision `  fecha  NO  NULO ,
  ` Pres_fecha_recepcion `  fecha DEFAULT NULL ,
  ` Pres_forma_pago `  Char ( 30 ) DEFAULT NULL ,
  ` Pres_lugar_trabajo `  varchar ( 45 ) DEFAULT NULL ,
  ` Pres_estado `  varchar ( 45 ) DEFAULT NULL ,
  ` Pres_costo_mano_obra `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Pres_costo_materiales `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Pres_costo_total `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Cli_codigo `  int ( 11 ) NOT  NULL ,
  ` Pres_encargado `  varchar ( 100 ) NOT  NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `presupuesto`
-

INSERTAR  EN  ` presupuesto ` ( ` pres_cod ` , ` pres_fecha_emision ` , ` pres_fecha_recepcion ` , ` pres_forma_pago ` , ` pres_lugar_trabajo ` , ` pres_estado ` , ` pres_costo_mano_obra ` , ` pres_costo_materiales ` , ` pres_costo_total ` , ` cli_codigo ` , `pres_encargado ` ) VALORES
( 0 , ' 2019-06-20' , ' 2019-06-20' , NULL , NULL , NULL , NULL , NULL , NULL , 1 , ' ' ),
( 1 , ' 2019-06-20' , ' 2019-06-20' , NULL , NULL , NULL , NULL , NULL , NULL , 1 , ' ' );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `producto`
-

DROP  TABLE  IF  EXISTS  ` producto ` ;
CREAR  TABLA  ` producto ` (
  ` Prod_cod `  int ( 11 ) NOT  NULL ,
  ` Prod_nombre_comercial `  varchar ( 150 ) NO  NULL ,
  ` Prod_precio_compra `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Prod_precio_venta `  decimal ( 8 , 2 ) UNSIGNED DEFAULT NULL ,
  ` Prod_cant `  decimal ( 8 , 0 ) UNSIGNED DEFAULT NULL ,
  ` Prov_cod `  int ( 11 ) DEFAULT NULL ,
  ` Mar_codigo `  int ( 11 ) DEFAULT NULL ,
  ` Cat_codigo `  int ( 11 ) DEFAULT NULL ,
  ` Uni_codigo `  int ( 11 ) DEFAULT NULL ,
  ` Alm_codigo `  int ( 11 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `producto`
-

INSERTAR  EN  ` producto ` ( ` prod_cod ` , ` prod_nombre_comercial ` , ` prod_precio_compra ` , ` prod_precio_venta ` , ` prod_cant ` , ` prov_cod ` , ` mar_codigo ` , ` cat_codigo ` , ` uni_codigo ` , ` alm_codigo ` ) VALORES
( 3 , ' Tuerca' , ' 14,00' , ' 12,00' , ' 10' , NULL , 6 , 2 , 4 , 3 ),
( 4 , ' DESMANTELAMIENTO' , ' 1.00' , ' 100.00' , ' 100' , NULL , 2 , 1 , 4 , 2 ),
( 5 , ' prueba2' , ' 10,00' , ' 5,00' , ' 100' , NULL , 1 , 1 , 1 , 1 ),
( 6 , ' prueba' , ' 10,00' , ' 11,00' , ' 12' , 1 , 1 , 1 , 1 , 1 ),
( 9 , ' PINTURA' , ' 100.00' , ' 100.00' , ' 1' , 2 , 2 , 1 , 3 , 1 );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `proveedor`
-

DROP  TABLE  IF  EXISTS  ` Proveedor ` ;
CREAR  TABLA  ` Proveedor ` (
  ` Prov_cod `  int ( 11 ) NOT  NULL ,
  ` Prov_razon_social `  Char ( 100 ) DEFAULT NULL ,
  ` Prov_ruc `  Char ( 11 ) NOT  NULL ,
  ` Prov_direccion `  varchar ( 50 ) DEFAULT NULL ,
  ` Prov_telefono `  Char ( 9 ) NO  NULO ,
  ` Prov_email `  Char ( 50 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `proveedor`
-

INSERTAR  EN  ` Proveedor ` ( ` prov_cod ` , ` prov_razon_social ` , ` prov_ruc ` , ` prov_direccion ` , ` prov_telefono ` , ` prov_email ` ) VALORES
( 1 , ' Proveedor' , ' 10232356561' , ' lurigancho' , ' 000000' , ' no tiene' ),
( 2 , ' Prueba' , ' 10471215231' , ' s / n' , ' 947125315' , ' prueba@mail.com' );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `rol`
-

DROP  TABLE  IF  EXISTS  ` rol ` ;
CREAR  TABLA  ` rol ` (
  ` Rol_cod `  int ( 11 ) NOT  NULL ,
  ` Rol_nombre `  varchar ( 50 ) NOT  NULL ,
  ` Rol_fecha_reg `  datetime  NOT  NULL ,
  ` Rol_estado `  tinyint ( 4 ) NOT  NULL
) MOTOR = InnoDB DEFAULT CHARSET = latin1;

-
- Volcado de datos para la tabla `rol`
-

INSERTAR  EN  ` rol ` ( ` rol_cod ` , ` rol_nombre ` , ` rol_fecha_reg ` , ` rol_estado ` ) VALORES
( 1 , ' Admin' , ' 2019-05-29 23:55:42' , 0 ),
( 2 , ' Admin' , ' 2019-05-30 11:54:15' , 1 ),
( 3 , ' Compras' , ' 2019-05-30 11:54:34' , 1 ),
( 5 , ' erewr' , ' 2019-05-30 11:54:57' , 0 ),
( 6 , ' Ventas' , ' 2019-05-30 11:55:16' , 0 ),
( 7 , ' Ventas' , ' 2019-05-30 11:56:08' , 0 ),
( 8 , ' Ventas' , ' 2019-05-30 11:56:10' , 0 ),
( 14 , ' Nuevo' , ' 2019-05-30 12:23:57' , 0 ),
( 15 , ' erer' , ' 2019-05-30 12:55:55' , 0 ),
( 16 , ' Gerente' , ' 2019-06-13 13:27:10' , 1 );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `tipo_documento`
-

DROP  TABLE  IF  EXISTS  ` tipo_documento ` ;
CREAR  TABLA  ` tipo_documento ` (
  ` Tdoc_cod `  int ( 11 ) NOT  NULL ,
  ` Tdoc_nombre `  Char ( 20 ) NOT  NULL ,
  ` Tdoc_estado `  tinyint ( 1 ) NO  NULO
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `tipo_documento`
-

INSERTAR  EN  ` tipo_documento ` ( ` tdoc_cod ` , ` tdoc_nombre ` , ` tdoc_estado ` ) VALORES
( 1 , ' DNI' , 1 ),
( 2 , ' PPT' , 1 ),
( 6 , ' Pasaporte' , 1 ),
( 7 , ' prueba' , 0 ),
( 8 , ' nada' , 1 );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `unidad_medida`
-

DROP  TABLE  IF  EXISTS  ` unidad_medida ` ;
CREAR  TABLA  ` unidad_medida ` (
  ` Uni_codigo `  int ( 11 ) NOT  NULL ,
  ` Uni_descripcion `  varchar ( 45 ) NOT  NULL ,
  ` Uni_estado `  tinyint ( 1 ) DEFAULT NULL
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `unidad_medida`
-

INSERTAR  EN  ` unidad_medida ` ( ` uni_codigo ` , ` uni_descripcion ` , ` uni_estado ` ) VALORES
( 1 , ' prueba0' , 0 ),
( 2 , ' PPT' , 1 ),
( 3 , ' Prueba3' , 1 ),
( 4 , ' prueba6' , 1 ),
( 5 , ' Prueba5' , 1 );

- ------------------------------------------------ --------

-
- Estructura de tabla para la tabla `usuario`
-

DROP  TABLE  IF  EXISTS  ` usuario ` ;
CREAR  TABLA  ` usuario ` (
  ` Usu_cod `  int ( 11 ) NOT  NULL ,
  ` Emp_codigo `  int ( 11 ) NOT  NULL ,
  ` Usu_nombre `  varchar ( 50 ) NOT  NULL ,
  ` Usu_clave `  varchar ( 50 ) NOT  NULL ,
  ` Rol_cod `  int ( 11 ) NOT  NULL ,
  ` Usu_ultimo_acceso `  fecha y hora DEFAULT NULL ,
  ` Usu_fecha_reg `  datetime  NOT  NULL ,
  ` Usu_situacion `  Char ( 1 ) NO  NULO ,
  ` Usu_estado `  Char ( 1 ) NO  NULO
) MOTOR = InnoDB DEFAULT CHARSET = utf8mb4;

-
- Volcado de datos para la tabla `usuario`
-

INSERTAR  EN  ` usuario ` ( ` usu_cod ` , ` emp_codigo ` , ` usu_nombre ` , ` usu_clave ` , ` rol_cod ` , ` usu_ultimo_acceso ` , ` usu_fecha_reg ` , ` usu_situacion ` , ` usu_estado ` ) VALORES
( 1 , 1 , ' admin' , ' 202cb962ac59075b964b07152d234b70' , 2 , ' 2019-05-30 00:49:18' , ' 2019-05-30 00:49:25' , ' 1' , ' 1' ),
( 3 , 2 , ' compras' , ' 55f584bac6a0782b4d032b4ddc18ed57' , 3 , NULL , ' 2019-05-30 13:01:32' , ' 1' , ' 1' ),
( 5 , 3 , ' gerente' , ' 5c515b74ab026af01b196f3d044f744c' , 16 , NULL , ' 2019-05-30 13:02:58' , ' 1' , ' 1' ),
( 6 , 1 , ' thewil' , ' 2895db886ca73a30ba7437e3cdee5b8e' , 16 , NULL , ' 2019-06-26 04:43:19' , ' 1' , ' 1' );

-
- Índices para tablas volcadas
-

-
- Índices de la tabla `actividad`
-
ALTER  TABLE  ` Actividad `
  ADD PRIMARIA  CLAVE ( ` act_cod ` ),
  ADD KEY  ` FK_actividad_presupuesto ` ( ` pres_cod ` );

-
- Índices de la tabla `actividad_empleado`
-
ALTER  TABLE  ` actividad_empleado `
  ADD PRIMARIA  CLAVE ( ` aemp_codigo ` ),
  ADD KEY  ` act_cod_idx ` ( ` act_cod ` ),
  ADD KEY  ` emp_cod_idx ` ( ` emp_cod ` );

-
- Índices de la tabla `actividad_productos`
-
ALTER  TABLE  ` actividad_productos `
  ADD PRIMARIA  CLAVE ( ` actpro_cod ` ),
  ADD KEY  ` FK_actividad_productos_actividad ` ( ` act_cod ` ),
  ADD KEY  ` FK_actividad_productos_producto ` ( ` prod_cod ` );

-
- Indices de la tabla `almacen`
-
ALTER  TABLE  ` almacen `
  ADD PRIMARIA  CLAVE ( ` alm_codigo ` );

-
- Indices de la tabla `categoria`
-
ALTER  TABLE  ` categoria `
  ADD PRIMARIA  CLAVE ( ` cat_cod ` ),
  ADD UNIQUE KEY  ` cat_nombre_UQ ` ( ` cat_nombre ` );

-
- Indices de la tabla `cliente`
-
ALTER  TABLE  ` cliente '
  ADD PRIMARIA  CLAVE ( ` cli_codigo ` ),
  ADD UNIQUE KEY  ` cli_email_UQ ` ( ` cli_email ` ),
  ADD UNIQUE KEY  ` cli_ruc_UQ ` ( ` cli_ruc ` ),
  ADD UNIQUE KEY  ` cli_telefono_UQ ` ( ` cli_telefono ` );

-
- Índices de la tabla `compra`
-
ALTER  TABLE  ` compra '
  ADD PRIMARIA  CLAVE ( ` comp_cod ` ),
  ADD KEY  ` prov_cod_idx ` ( ` prov_cod ` );

-
- Indices de la tabla `compra_detalle`
-
ALTER  TABLE  ` compra_detalle `
  ADD PRIMARIA  CLAVE ( ` cdet_cod ` ),
  ADD KEY  ` comp_cod_idx ` ( ` comp_cod ` ),
  ADD KEY  ` prod_cod_idx ` ( ` prod_cod ` );

-
- Índices de la tabla `conformidad`
-
ALTER  TABLE  ` Conformidad `
  ADD PRIMARIA  CLAVE ( ` conf_cod ` ),
  ADD UNIQUE KEY  ` conf_act_conformidad_UQ ` ( ` conf_act_conformidad ` ),
  ADD KEY  ` FK_conformidad_presupuesto ` ( ` pres_cod ` );

-
- Indices de la tabla `detalle_presupuesto`
-
ALTER  TABLE  ` detalle_presupuesto `
  ADD KEY  ` FK_detalle_presupuesto_presupuesto ` ( ` pre_cod ` ),
  ADD KEY  ` FK_detalle_presupuesto_producto ` ( ` pro_cod ` );

-
- Índices de la tabla `empleado`
-
ALTER  TABLE  ` empleado `
  ADD PRIMARIA  CLAVE ( ` emp_codigo ` ),
  ADD UNIQUE KEY  ` emp_dni_UQ ` ( ` emp_numero_doc ` ),
  ADD UNIQUE KEY  ` emp_telefono_UQ ` ( ` emp_telefono ` ),
  ADD KEY  ` tdoc_cod_idx ` ( ` tdoc_cod ` );

-
- Indices de la tabla `marca`
-
ALTER  TABLE  ` marca `
  ADD PRIMARIA  CLAVE ( ` mar_codigo ` ),
  ADD UNIQUE KEY  ` mar_nombre_UQ ` ( ` mar_nombre ` );

-
- Indices de la tabla `orden_ejecucion`
-
ALTER  TABLE  ` orden_ejecucion `
  ADD PRIMARIA  CLAVE ( ` ord_cod ` ),
  ADD UNIQUE KEY  ` ord_num_orden_UNIQUE ` ( ` ord_num_orden ` ),
  ADD UNIQUE KEY  ` ord_odm_UNIQUE ` ( ` ord_odm ` ),
  ADD KEY  ` pres_cod_idx ` ( ` pres_cod ` );

-
- Indices de la tabla `presupuesto`
-
ALTER  TABLE  ` presupuesto `
  ADD PRIMARIA  CLAVE ( ` pres_cod ` ),
  ADD KEY  ` FK_presupuesto_cliente ` ( ` cli_codigo ` );

-
- Indices de la tabla `producto`
-
ALTER  TABLE  ` producto `
  ADD PRIMARIA  CLAVE ( ` prod_cod ` ),
  ADD KEY  ` alm_codigo_idx ` ( ` alm_codigo ` ),
  ADD KEY  ` cat_codigo_idx ` ( ` cat_codigo ` ),
  ADD KEY  ` mar_codigo_idx ` ( ` mar_codigo ` ),
  ADD KEY  ` uni_codigo_idx ` ( ` uni_codigo ` ),
  ADD KEY  ` prov_codigo_idx ` ( ` prov_cod ` );

-
- Índices de la tabla `proveedor`
-
ALTER  TABLE  ` Proveedor `
  ADD PRIMARIA  CLAVE ( ` prov_cod ` ),
  ADD UNIQUE KEY  ` proveedor_UQ ` ( ` prov_telefono ` , ` prov_ruc ` );

-
- Indices de la tabla `rol`
-
ALTER  TABLE  ` rol `
  ADD PRIMARIA  CLAVE ( ` rol_cod ` );

-
- Indices de la tabla `tipo_documento`
-
ALTER  TABLE  ` tipo_documento `
  ADD PRIMARIA  CLAVE ( ` tdoc_cod ` ),
  ADD UNIQUE KEY  ` tdoc_nombre_UNIQUE ` ( ` tdoc_nombre ` );

-
- Indices de la tabla `unidad_medida`
-
ALTER  TABLE  ` unidad_medida `
  ADD PRIMARIA  CLAVE ( ` uni_codigo ` ),
  ADD UNIQUE KEY  ` descripcion_UQ ` ( ` uni_descripcion ` );

-
- Indices de la tabla `usuario`
-
ALTER  TABLE  ` usuario `
  ADD PRIMARIA  CLAVE ( ` usu_cod ` ),
  ADD UNIQUE KEY  ` Índice 1 ` ( ` usu_nombre ` ),
  ADD KEY  ` FK_usuario_empleado_emp_codigo ` ( ` emp_codigo ` ),
  ADD KEY  ` FK_usuario_rol_rol_cod ` ( ` rol_cod ` );

-
- AUTO_INCREMENT de las tablas volcadas
-

-
- AUTO_INCREMENT de la tabla `actividad`
-
ALTER  TABLE  ` Actividad `
  MODIFICAR  ` act_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT;

-
- AUTO_INCREMENT de la tabla `actividad_empleado`
-
ALTER  TABLE  ` actividad_empleado `
  MODIFICAR  ` aemp_codigo `  int ( 11 ) NOT  NULL AUTO_INCREMENT;

-
- AUTO_INCREMENT de la tabla `actividad_productos`
-
ALTER  TABLE  ` actividad_productos `
  MODIFICAR  ` actpro_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT;

-
- AUTO_INCREMENT de la tabla `almacen`
-
ALTER  TABLE  ` almacen `
  MODIFICAR  ` alm_codigo `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 6 ;

-
- AUTO_INCREMENT de la tabla `categoria`
-
ALTER  TABLE  ` categoria `
  MODIFICAR  ` cat_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 10 ;

-
- AUTO_INCREMENT de la tabla `cliente`
-
ALTER  TABLE  ` cliente '
  MODIFICAR  ` cli_codigo `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 4 ;

-
- AUTO_INCREMENT de la tabla `compra`
-
ALTER  TABLE  ` compra '
  MODIFICAR  ` comp_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT;

-
- AUTO_INCREMENT de la tabla `compra_detalle`
-
ALTER  TABLE  ` compra_detalle `
  MODIFICAR  ` cdet_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT;

-
- AUTO_INCREMENT de la tabla `conformidad`
-
ALTER  TABLE  ` Conformidad `
  MODIFICAR  ` conf_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT;

-
- AUTO_INCREMENT de la tabla `empleado`
-
ALTER  TABLE  ` empleado `
  MODIFICAR  ` emp_codigo `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 4 ;

-
- AUTO_INCREMENT de la tabla `marca`
-
ALTER  TABLE  ` marca `
  MODIFICAR  ` mar_codigo `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 7 ;

-
- AUTO_INCREMENT de la tabla `producto`
-
ALTER  TABLE  ` producto `
  MODIFICAR  ` prod_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 10 ;

-
- AUTO_INCREMENT de la tabla `proveedor`
-
ALTER  TABLE  ` Proveedor `
  MODIFICAR  ` prov_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 3 ;

-
- AUTO_INCREMENT de la tabla `rol`
-
ALTER  TABLE  ` rol `
  MODIFICAR  ` rol_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 17 ;

-
- AUTO_INCREMENT de la tabla `tipo_documento`
-
ALTER  TABLE  ` tipo_documento `
  MODIFICAR  ` tdoc_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 9 ;

-
- AUTO_INCREMENT de la tabla `unidad_medida`
-
ALTER  TABLE  ` unidad_medida `
  MODIFICAR  ` uni_codigo `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 6 ;

-
- AUTO_INCREMENT de la tabla `usuario`
-
ALTER  TABLE  ` usuario `
  MODIFICAR  ` usu_cod `  int ( 11 ) NOT  NULL AUTO_INCREMENT, AUTO_INCREMENT = 7 ;

-
- Restricciones para tablas volcadas.
-

-
- Filtros para la tabla `actividad`
-
ALTER  TABLE  ` Actividad `
  ADD CONSTRAINT  ` FK_actividad_presupuesto `  FOREIGN KEY ( ` pres_cod ` ) Referencias  ` presupuesto ` ( ` pres_cod ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla `actividad_empleado`
-
ALTER  TABLE  ` actividad_empleado `
  ADD CONSTRAINT  ` act_cod `  FOREIGN KEY ( ` act_cod ` ) Referencias  ` activity ' ( ` act_cod ' ) ON DELETE  NO  ACCIÓN  DE  ACTUALIZACIÓN  NO  ACCIÓN ,
  ADD CONSTRAINT  ` emp_cod `  FOREIGN KEY ( ` emp_cod ` ) Referencias  ` empleado ` ( ` emp_codigo ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla `actividad_productos`
-
ALTER  TABLE  ` actividad_productos `
  ADD CONSTRAINT  ` FK_actividad_productos_actividad `  FOREIGN KEY ( ` act_cod ` ) Referencias  ` activity ' ( ` act_cod ' ) ON DELETE  NO  ACCIÓN  DE  ACTUALIZACIÓN  NO  ACCIÓN ,
  ADD CONSTRAINT  ` FK_actividad_productos_producto `  FOREIGN KEY ( ` prod_cod ` ) Referencias  ` producto ` ( ` prod_cod ` );

-
- Filtros para la tabla `compra`
-
ALTER  TABLE  ` compra '
  ADD CONSTRAINT  ` prov_cod `  FOREIGN KEY ( ` prov_cod ` ) Referencias  ` Proveedor ` ( ` prov_cod ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla `compra_detalle`
-
ALTER  TABLE  ` compra_detalle `
  ADD CONSTRAINT  ` FK_compra_detalle_producto `  FOREIGN KEY ( ` prod_cod ` ) Referencias  ` producto ` ( ` prod_cod ` ),
  ADD CONSTRAINT  ` comp_cod `  FOREIGN KEY ( ` comp_cod ` ) Referencias  ` compra ` ( ` comp_cod ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla
-
ALTER  TABLE  ` Conformidad `
  ADD CONSTRAINT  ` FK_conformidad_presupuesto `  FOREIGN KEY ( ` pres_cod ` ) Referencias  ` presupuesto ` ( ` pres_cod ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla `detalle_presupuesto`
-
ALTER  TABLE  ` detalle_presupuesto `
  ADD CONSTRAINT  ` FK_detalle_presupuesto_presupuesto `  FOREIGN KEY ( ` pre_cod ` ) Referencias  ` presupuesto ` ( ` pres_cod ' ) ON DELETE  NO  ACCIÓN  DE  ACTUALIZACIÓN  NO  ACCIÓN ,
  ADD CONSTRAINT  ` FK_detalle_presupuesto_producto `  FOREIGN KEY ( ` pro_cod ` ) Referencias  ` producto ` ( ` prod_cod ` );

-
- Filtros para la tabla `empleado`
-
ALTER  TABLE  ` empleado `
  ADD CONSTRAINT  ` tdoc_cod `  FOREIGN KEY ( ` tdoc_cod ` ) Referencias  ` tipo_documento ` ( ` tdoc_cod ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla `orden_ejecucion`
-
ALTER  TABLE  ` orden_ejecucion `
  ADD CONSTRAINT  ` pres_cod `  FOREIGN KEY ( ` pres_cod ` ) Referencias  ` presupuesto ` ( ` pres_cod ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla `presupuesto`
-
ALTER  TABLE  ` presupuesto `
  ADD CONSTRAINT  ` FK_presupuesto_cliente `  FOREIGN KEY ( ` cli_codigo ` ) Referencias  ` cliente ' ( ` cli_codigo ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla `producto`
-
ALTER  TABLE  ` producto `
  ADD CONSTRAINT  ` alm_codigo `  FOREIGN KEY ( ` alm_codigo ` ) Referencias  ` almacen ` ( ` alm_codigo ' ) ON DELETE  NO  ACCIÓN  DE  ACTUALIZACIÓN  NO  ACCIÓN ,
  ADD CONSTRAINT  ` cat_cod `  FOREIGN KEY ( ` cat_codigo ` ) Referencias  ` categoria ` ( ` cat_cod ' ) ON DELETE  NO  ACCIÓN  DE  ACTUALIZACIÓN  NO  ACCIÓN ,
  ADD CONSTRAINT  ` mar_codigo `  FOREIGN KEY ( ` mar_codigo ` ) Referencias  ` marca ' ( ` mar_codigo ' ) ON DELETE  NO  ACCIÓN  DE  ACTUALIZACIÓN  NO  ACCIÓN ,
  ADD CONSTRAINT  ` pro_codigo `  FOREIGN KEY ( ` prov_cod ` ) Referencias  ` Proveedor ` ( ` prov_cod ' ) ON DELETE  NO  ACCIÓN  DE  ACTUALIZACIÓN  NO  ACCIÓN ,
  ADD CONSTRAINT  ` uni_codigo `  FOREIGN KEY ( ` uni_codigo ` ) Referencias  ` unidad_medida ` ( ` uni_codigo ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;

-
- Filtros para la tabla `usuario`
-
ALTER  TABLE  ` usuario `
  ADD CONSTRAINT  ` FK_usuario_empleado_emp_codigo `  FOREIGN KEY ( ` emp_codigo ` ) Referencias  ` empleado ` ( ` emp_codigo ' ) ON DELETE  NO  ACCIÓN  DE  ACTUALIZACIÓN  NO  ACCIÓN ,
  ADD CONSTRAINT  ` FK_usuario_rol_rol_cod `  FOREIGN KEY ( ` rol_cod ` ) Referencias  ` rol ` ( ` rol_cod ` ) ON DELETE  NO  ACCIÓN  EN  ACTUALIZACIÓN  NO  ACCIÓN ;
COMMIT ;

/ * ! 40101 SET CHARACTER_SET_CLIENT = @ OLD_CHARACTER_SET_CLIENT * / ;
/ * ! 40101 SET CHARACTER_SET_RESULTS = @ OLD_CHARACTER_SET_RESULTS * / ;
/ * ! 40101 SET COLLATION_CONNECTION = @ OLD_COLLATION_CONNECTION * / ;