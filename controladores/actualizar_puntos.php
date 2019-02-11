<?php 


require_once '../clases/Conexion.php';
require_once '../clases/Usuario.php';

$obj=new Usuario();


$datos=array(
	$_POST['docid'],
	$_POST['puntosacum'],
	$_POST['puntosredi'],
	
	
	
);

$obj->ActualizarPuntos($datos);

if($obj){

	echo "Datos Ingresados Correctamente";

}else{
	echo "Error al ingresar los datos";
}

echo "<br>";





?>