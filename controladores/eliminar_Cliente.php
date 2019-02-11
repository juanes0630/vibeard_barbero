<?php 


require_once '../clases/Conexion.php';
require_once '../clases/Usuario.php';

$obj=new Usuario();
$codigo=$_GET['cod'];
$obj->EliminarCliente($codigo);

if($obj){

	echo "Datos eliminados Correctamente";

}else{
	echo "Error al eliminar los datos";
}

echo "<br>";





?>