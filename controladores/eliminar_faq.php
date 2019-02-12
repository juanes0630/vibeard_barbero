<?php 


require_once '../clases/Conexion.php';
require_once '../clases/faq.php';

$obj=new faq();
$codigo=$_GET['codigo'];
$obj->EliminarFaq($codigo); 

if($obj){

	echo "Datos eliminados Correctamente";

}else{
	echo "Error al eliminar los datos";
}

echo "<br>";





?>