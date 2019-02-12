<?php 

 class Conectar {

	private $servidor="localhost";
	private $usuario="usuario_inmobiliaria";
	private $password="muysecreta";
	private $bd="vibeard";

	public function conexion(){

		$conexion=mysqli_connect($this->servidor,$this->usuario,$this->password,$this->bd);

		return $conexion;


	}

	public function cerrarConexion(){
		
		return  mysqli_close(self::conexion());

		
	}

}


 ?>
