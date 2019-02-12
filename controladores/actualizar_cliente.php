<?php 


require_once '../clases/Conexion.php';
require_once '../clases/Usuario.php';

$obj=new Usuario();


$datos=array(
	$_POST['docid'],
	$_POST['contrasena'],
	$_POST['nombre'],
	$_POST['apellidos'],
	$_POST['correo'],
	$_POST['telefono'],
	$_POST['celular'],
	$_POST['fechanacimiento'],
	$_POST['genero'],
	
);

$obj->ActualizarCliente($datos);

if($obj){

	echo "Datos Ingresados Correctamente";

}else{
	echo "Error al ingresar los datos";
}

echo "<br>";





?>