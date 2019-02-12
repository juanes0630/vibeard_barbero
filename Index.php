<!DOCTYPE html>
<html>
<head>
	<title>Vibeard</title>
	<link rel="shortcut icon" href="img/favicon.png" />
	<link rel= "stylesheet" type ="text/css" href="Librerias/css/bootstrap.css">
	<link rel= "stylesheet" type ="text/css" href="Librerias/css/estilos.css">
	<script src="Librerias/js/bootstrap.min.js"></script>
	
	<meta name="viewport" content="width device-width initial scale =1">
	<meta charset="utf-8">
	

</head>
<body style=" margin: 0; background-color:#111;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 col-sm-12">
				<div class="row"  style=" background-color: #111;" >
					<!--punticos-->

					<div class="col-1 col-sm-1">
						<ul style="list-style: none; padding-left: 0; padding-top: 1vw;" class="punticos">
							<li><div style="border-radius: 100%; width: 0.7vw; height: 0.7vw; background-color: white;">&nbsp</div></li>
							<li><div style="border-radius: 100%; width: 0.7vw; height: 0.7vw; background-color: red;">&nbsp</div></li>
							<li><div style="border-radius: 100%; width: 0.7vw; height: 0.7vw; background-color: #245888;">&nbsp</div></li>
						</ul>
					</div>

					<!------------>
					<div class="col-1 col-sm-1" >
						<i class="glyphicon glyphicon glyphicon-menu-left"></i>
					</div>
					<div class="col-3 col-sm-3" >
						<i class="glyphicon glyphicon glyphicon-menu-right"></i>
					</div>
					<div class="col-1 col-sm-1">
						<img id="logo" src="img/Vibeard_blanco.png"/>
					</div>
					<div class="col-6 col-sm-6" align="right">
						<img src="img/foto_perfil.png" class="img-fluid perfil">
					</div>
				</div>
				<div class="row">
					<div class="col-11 col-sm-11" style="padding: 0;margin-left: 4vw;">
						<iframe src="vistas/frm_horario_barbero.php" name="iframe" width="104.5%" height="563vw" style="border: 0; padding: 0; margin:0; "></iframe>
					</div>
					<div class="col-sm-1"></div>
				</div>
			</div>
		</div>
	</div>

	<!--sidebar-->
	<div class="sidebar">
		<ul>
			<li><img src="img/universal_blanco.png" class="img-fluid logouniversal"></li>	
			<li>
				<ul>
					<li><img src="img/facebook.png"></li>
					<li><img src="img/instagram.png"></li>
					<li><img src="img/twitter.png"></li>
				</ul>
			</li>
			<div class="menusidebar">				
				<li><a href="vistas/frm_perfil.php" target="iframe">Perfil</a></li>						
					<li><a href="vistas/frm_barberos.php" target="iframe">Usuarios</a></li>
					<li><a href="vistas/frm_catalogo.php" target="iframe">Administrar</a></li>
					<li><a href="vistas/frm_puntos.php" target="iframe"> Puntos</a></li>
					<li style="padding-bottom: 3.2vw;"><a href="vistas/frm_informacion.php" target="iframe">Información</a></li>
				</div>
			</ul>
		</div>	
		<!-- termina sidebar-->	


	</body>
	</html>