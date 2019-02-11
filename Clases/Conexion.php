<?php 

 class Conectar {

	private $servidor="localhost";
	private $usuario="root";
	private $password="12345";
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