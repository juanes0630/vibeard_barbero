<!DOCTYPE html>
<html>
<head>
	<title>vibeard</title>
	<meta charset="utf-8">
	<!--Se hace llamado a los archivos de la libreria de Bootstrap 4-->
	<link rel="stylesheet" href="../Librerias/css/bootstrap.min.css"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="../Librerias/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script src="../Librerias/js/bootstrap.min.js"></script>
	<?php
	//Se llama el metodo conectar de la clase conexion
	require_once '../Clases/Conexion.php';
	$c=new conectar();
	//Se almacena la conexion en variable $conexion
	$conexion=$c->conexion();
	//Consultas para rellenar los combobox
	$sql= "SELECT * FROM tbl_faq";
	$result=mysqli_query($conexion,$sql);
	?>
	<style type="text/css">
	body{
		background-color: #111;
	}
	#cuerpo_pregunta{
		color:white;
		margin-left: 3em;
	}

	/*Condición para aplicar estilos css solo cuando las dimensiones de la pantalla sean minimo de 760px*/
	@media(min-width:768px) {
		#accordion{
			margin-top: 2em;
		}
	}
	
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 col-sm-12">
				<!--Inicia navbar Bootstrap 4 situado en la parte superior-->
				<ul class="nav nav-pills nav-fill ">
					<li class="nav-item">
						<a class="nav-link active btn btn-info" href="frm_informacion.php">FAQ</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="frm_informacion_universal.php">J.A Tendencias</a>
					</li>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search" placeholder="¿Que duda tienes?" aria-label="Search" style="background-color: transparent;">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
					</form>

				</ul>
				<!--Finaliza navbar-->
			</div>
			<div class="col-sm-12">
				



				

				
			</div>
		</div>
	</div>
</body>
</html>