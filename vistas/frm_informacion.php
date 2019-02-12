<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="shortcut icon" href="../img/favicon.png" />
	<link rel= "stylesheet" type ="text/css" href="../Librerias/css/bootstrap.css">
	<link rel= "stylesheet" type ="text/css" href="../Librerias/css/css_vistas.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width device-width initial scale =1">
	<meta charset="utf-8">
	<?php
	require_once '../clases/Conexion.php';
	$c=new conectar();
	$conexion=$c->conexion();
	$sql= "SELECT * FROM tbl_faq";
	$result=mysqli_query($conexion,$sql);
	

	?>
</head>
<body  background="../img/fondo.png" background-color: #111;background-size: 100% 1500%;
background-repeat:no-repeat; style="background-color: #111;">

<div class="container-fluid">
	<div class="row">			
		<div class="col-sm-12">
			<ul class="nav nav-pills nav-fill ">
				<li class="nav-item">
					<a class="nav-link active btn btn-info" href="frm_informacion.php">FAQ</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="frm_j.a_tendencias.php">J.A TENDENCIAS</a>
				</li>
			</ul>
		</div>
		
	</div>

	<div class="row" style="margin-right:0vw; ">
		<div class="col-sm-2"></div>
		<div class="col-sm-6" style="margin-top:2.5vw;">
			<label style="color: white;">PREGUNTAS MAS FRECUENTES (FAQ)</label>
		</div>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="Buscar pregunta" aria-label="Search" style="background-color: transparent;">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
		</form>

	</div>

	<div class="row">

		<?php 
		$contador=0;

		while($vector=mysqli_fetch_row($result)){ 
			$contador=$contador+1;

			?>
			<div class="col-sm-2"></div>

			<div class="col-sm-10"  style="margin-top: 4vw;">
				<a data-toggle="collapse" href="<?php echo "#collapse".$contador;?>" role="button" aria-expanded="false" aria-controls="collapse1"><i class="glyphicon glyphicon-plus-sign" style="color: white;"></i></a>
				<label style="color: white;"><?php echo ($vector[1]); ?></label>
				<div class="collapse" id="<?php echo "collapse".$contador;?>" style="color:white;padding-left: 3vw;"><?php echo ($vector[2]); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

					<a href="frm_insert_faq.php"><i class="glyphicon glyphicon-plus"></i></a>&nbsp;&nbsp;&nbsp;

					<a href="frm_Updated_faq.php?codigo=<?php echo $vector[0];?>">
						<i class="glyphicon glyphicon-pencil"></i>
					</a>
					<a href="../controladores/eliminar_faq.php?codigo=<?php echo $vector[0]; ?>">&nbsp;&nbsp;&nbsp;
						<i class="glyphicon glyphicon-remove"></i>
					</a>
				</div>
			</div>
		</div>
		<?php } ?>
	</div>
</body>
</html>