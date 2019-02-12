<?php 
require_once '../clases/Conexion.php';
$c=new conectar();
$conexion=$c->conexion();
$codigo=$_GET['cod'];
$sql= "SELECT * FROM vta_usuario where docid= '$codigo'";
$result = mysqli_query ($conexion, $sql);
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
<body  background="../img/fondo.png" style="background-color: #111;">
	<?php while($vector=mysqli_fetch_array($result)){ ?>
		<form action="../controladores/actualizar_cliente.php" method="POST">
			<h2 align="center" style="color:#eee;">ACTUALIZAR USUARIO</h2>
			<br>
			<div class="container" style="margin-left: 1vw;">
				<div class ="row">
					<div class="col-sm-6">
						<label style="color:white;">CC/TI: </label>
						<input type="text" name="docid" class="form-control" value="<?php echo $vector[0]; ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
					</div>
					<div class="col-sm-6">
						<label style="color:white;">CORREO: </label>
						<input type="text" name="correo" class="form-control" value="<?php echo $vector[4]; ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
					</div>
					<div class= "col-sm-6" >
						<label style="color:white;">NOMBRE: </label>
						<input type="text" name="nombre" class="form-control" value="<?php echo $vector[2]; ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
						<label style="color:white;">CELULAR: </label>
						<input type="text" name="celular" class="form-control" value="<?php echo $vector[6]; ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
						<label style="color:white;">FECHA DE NACIMIENTO: </label>
						<input type="date" name="fechanacimiento" class="form-control" value="<?php echo $vector[7]; ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br><br>
					</div>
					<div class= "col-sm-6" >
						<label style="color:white;">APELLIDOS: </label>
						<input type="text" name="apellidos" class="form-control" value="<?php echo $vector[3]; ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>	

						<label style="color:white;">CONTRASEÑA: </label>
						<input type="password" name="contrasena" class="form-control" value="<?php echo $vector[1]; ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" ><br>
						<label style="color:white;">TELEFONO: </label>
						<input type="text" name="telefono" class="form-control" value="<?php echo $vector[5]; ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent;color:white;" >
						<br>
						<label style="color:white;">GENERO</label>
						<select name="genero" class="form-control"  style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;">
							<option style="color:black;" value="<?php echo $vector[8];?>">
								<?php echo $vector[15];?>
							</option>
							<?php while ($verg=mysqli_fetch_array($genero)) { if ( $vector[15] <> $verg[1] ){ ?>
								<option style="color:black;" value = "<?php echo $verg[0]; ?>">
									<?php echo $verg[1]; ?>
								</option>
							<?php }} ?>
						</select><br>
					</div>
					<input type="submit" name="ENVIAR" class="btn btn-primary btn-block">

				</div>
			</div>
		</form>
	<?php } ?>
</body>
</html>