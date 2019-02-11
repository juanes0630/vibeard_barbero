<?php 

class Usuario{

	public function IngresarUsuario($datos){

		$c=new conectar();
		$conexion=$c->conexion();

		$sql="INSERT INTO tbl_usuario values ('$datos[0]','$datos[1]', '$datos[2]', '$datos[3]', '$datos[4]','$datos[5]', '$datos[6]', '$datos[7]' , '$datos[8]' , null , null,null, '$datos[10]' , 1)";

		$result=mysqli_query($conexion,$sql);

		return $result;

		$c->Desconectar();

	}

	public function ActualizarUsuario($datos){

		$c=new conectar();
		$conexion=$c->conexion();	

		$sql="UPDATE tbl_usuario SET clave='$datos[1]', nombre='$datos[2]', apellido='$datos[3]', correo='$datos[4]', telefono_fijo='$datos[5]', celular='$datos[6]', fecha_nacimiento='$datos[7]', genero='$datos[8]', foto=null , certificados='$datos[10]' , tipo_de_usuario=1 WHERE docid='$datos[0]'";

		$result=mysqli_query($conexion,$sql);

		return $result;

		$c->Desconectar();
	}

	public function EliminarUsuario($codigo){

		$c=new conectar();
		$conexion=$c->conexion();

		$sql="DELETE from tbl_usuario where docid ='$codigo'";

		$result=mysqli_query($conexion,$sql);


		return $result;

		$c->Desconectar();

	}
	public function IngresarCliente($datos){

		$c=new conectar();
		$conexion=$c->conexion();

		$sql="INSERT INTO tbl_usuario values ('$datos[0]','$datos[1]', '$datos[2]', '$datos[3]', '$datos[4]','$datos[5]', '$datos[6]', '$datos[7]' , '$datos[8]' , null , null,null, null , 2)";

		$result=mysqli_query($conexion,$sql);

		return $result;

		$c->Desconectar();

	}

	public function ActualizarCliente($datos){

		$c=new conectar();
		$conexion=$c->conexion();	

		$sql="UPDATE tbl_usuario SET clave='$datos[1]', nombre='$datos[2]', apellido='$datos[3]', correo='$datos[4]', telefono_fijo='$datos[5]', celular='$datos[6]', fecha_nacimiento='$datos[7]', genero='$datos[8]', foto=null , certificados= null , tipo_de_usuario=2 WHERE docid='$datos[0]'";

		$result=mysqli_query($conexion,$sql);

		return $result;

		$c->Desconectar();
	}
	public function EliminarCliente($codigo){

		$c=new conectar();
		$conexion=$c->conexion();

		$sql="DELETE from tbl_usuario where docid ='$codigo'";

		$result=mysqli_query($conexion,$sql);


		return $result;

		$c->Desconectar();

	}
	public function ActualizarPuntos($datos){

		$c=new conectar();
		$conexion=$c->conexion();	

		$sql="UPDATE tbl_usuario SET  puntos_acumulados='$datos[1]', puntos_redimidos='$datos[2]', WHERE docid='$datos[0]'";

		$result=mysqli_query($conexion,$sql);

		return $result;

		$c->Desconectar();
}

}

?>