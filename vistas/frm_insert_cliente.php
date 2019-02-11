<?php 
require_once '../clases/Conexion.php';
$c=new conectar();
$conexion=$c->conexion();
$idgenero= "SELECT * FROM tbl_genero";
$genero = mysqli_query ($conexion, $idgenero);
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="shortcut icon" href="../img/favicon.png" />
	<link rel= "stylesheet" type ="text/css" href="../Librerias/css/bootstrap.css">
	<link rel= "stylesheet" type ="text/css" href="../Librerias/css/css_vistas.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<meta name="viewport" content="width device-width initial scale =1">
	<meta charset="utf-8">
</head>
<body style="background-image: url(../img/barberos_fondo.png); background-color:#111;">
	<form action="../controladores/insertar_cliente.php" method="POST">
		<h2 style="color:#eee; margin-left: 20vw;">NUEVO USUARIO</h2>
		<br>
		<div class="container" style="margin-left: 1vw;">
			<div class ="row">
				<div class="col-sm-6">
					<label style="color:white;">CC/TI: </label>
					<input type="text" name="docid" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
				</div>
				<div class="col-sm-6">
					<label style="color:white;">CORREO: </label>
					<input type="text" name="correo" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
				</div>
				<div class= "col-sm-6" >
					<label style="color:white;">NOMBRE: </label>
					<input type="text" name="nombre" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
					<label style="color:white;">CELULAR: </label>
					<input type="text" name="celular" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
					<label style="color:white;">FECHA DE NACIMIENTO: </label>
					<input type="date" name="fechanacimiento" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
					<label style="color:white;">GENERO</label>
					<select name="genero" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;" required>
						<option value="">Seleccione</option>
						<?php while ($verg=mysqli_fetch_array($genero)) {?>
						<option value = "<?php echo $verg[0]; ?>">
							<?php echo $verg[1]; ?>
						</option>
						<?php } ?>
					</select><br>
				</div>
				<div class= "col-sm-6" >
					<label style="color:white;">APELLIDOS: </label>
					<input type="text" name="apellidos" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>	
					
					<label style="color:white;">CONTRASEÑA: </label>
					<input type="password" name="contrasena" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
					<label style="color:white;">CONFIRMAR CONTRASEÑA: </label>
					<input type="password" name="contrasenaconfirmar" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
					<label style="color:white;">TELEFONO: </label>
					<input type="text" name="telefono" class="form-control" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" >
					<br>
					
				</div>
				<input type="submit" name="ENVIAR" class="btn btn-primary btn-block">

			</div>
		</div>
	</form>
</body>
</html>