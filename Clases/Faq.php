<?php

class Faq{

	public function IngresarFaq($datos){

		$c=new conectar();
		$conexion=$c->conexion();

		$sql="INSERT INTO tbl_faq values ($datos[0], '$datos[1]', '$datos[2]')";

		$result=mysqli_query($conexion,$sql);

		return $result;

		$c->Desconectar();

	}

	public function ActualizarFaq($datos){
		$c=new conectar();
		$conexion=$c->conexion();

		$sql="UPDATE tbl_faq SET   nombre='$datos[1]', descripcion='$datos[2]' WHERE codigo='$datos[0]'";

		$result=mysqli_query($conexion,$sql);

		return $result;

		$c->Desconectar();

	}

public function EliminarFaq($datos){
	$c=new conectar();
	$conexion=$c->conexion();
	$sql="DELETE from tbl_faq WHERE codigo='$datos[0]'";
	$result=mysqli_query($conexion,$sql);


		return $result;

		$c->Desconectar();

}


}

?>