<?php 
require_once '../clases/Conexion.php';

$c=new conectar();
$conexion=$c->conexion();
$sql= "SELECT * FROM tbl_producto";
$result = mysqli_query($conexion,$sql);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Vibeard</title>
	<link rel="shortcut icon" href="../img/favicon.png" />
	<link rel= "stylesheet" type ="text/css" href="../Librerias/css/estilos.css">
	<link rel= "stylesheet" type ="text/css" href="../Librerias/css/bootstrap.css">
	<meta name="viewport" content="width device-width initial scale =1">
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	.thumb {
		height: 30.5vw;
		border: 1px solid #000;
		margin: -2vw -5px 0 0;
	}
</style>
</head>
<body  style="background-color: #111;">
	<div class="container">
		
	</div>
	<div class="container-fluid">
		<div class="row" style="margin-top: -2.2vw;">
			<div class="col-sm-10" style="padding: 0px;">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active" style="margin-top: 39.50vw; margin-bottom: 3.5vw;">
								
						</div>

						<?php while($vector=mysqli_fetch_row($result)){ ?>
						<div class="item">
							<div class="container">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-5">
										<div class="container-fluid">
											<div class="row">
												<div class="col-sm-1">

												</div>
												<div class="col-sm-11" style="margin-bottom: -10;">			
													<img class="img-fluid" src="../img/file.jpg" width="348vw" style="margin-left: 1.5vw;margin-top: 7vw;" >
												</div>
												<div class="col-sm-12" style=" 
												display: inline-flex;">
												<div style="border-radius: 100%; width: 7vw;height: 7vw; margin-top:-5vw;margin-left:8vw;" align="center">
													<div style="display: inline-flex;" >
														<p style="font-family: lucida brigth;font-size:2vw; "><?php echo $vector[3]; ?></p>
														<p style="font-family: lucida brigth;margin-top: 0.8vw">&nbsp$</p>
													</div>
													<p style="font-family: lucida brigth;margin-top: -1.2vw;">Precio</p>
												</div>
												<div style="border-radius: 100%; width: 7vw;height: 7vw; margin-top:-6.8vw;margin-left: 4vw;" align="center">
													<h1><?php echo $vector[5]; ?></h1>
													<p style="font-family: lucida brigth;margin-top: -1.2vw;">Puntos</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6" style="color: white;
								">
								<div class="container-fluid">
									<div class="row">

										<div class="col-sm-12" style="font-size: 6vw;font-family: lucida bright;text-align: left;margin-top: 16.5vw;margin-left:5vw;">
											<p><?php echo $vector[1]; ?></p>
										</div>
										<div class="col-sm-12" style="font-size: 1.2vw;margin-left: 6vw;">
											<p><?php echo "&nbsp".$vector[4]; ?></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php } ?>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev" >
				<span class="glyphicon glyphicon-chevron-left" style="margin-left:3.5vw;color:white; "></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" style="padding-left:3vw;" ></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="col-sm-2" style="background-color: #111;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12-fluid">
					<div style="display: inline-flex;margin-top: 3vw;">
						<input type="text" class="form-control" placeholder="BUSCAR" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:20px 0px 0px 20px;width: 12vw;" >
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="button" style="box-shadow: 0 0 8px #10C5CB;color: #ccc; border-radius:0px 20px 20px 0px;"><i class="glyphicon glyphicon-search"></i></button>
						</div>
					</div>
				</div>
				<div class="col-sm-12"><img src="../img/aceite.jpg" style="width: 10vw;margin-left: 1vw;padding-top: 2vw;"></div>
				<div class="col-sm-12"><img src="../img/aceite2.jpg" style="width: 10vw;margin-left: 1vw;padding-top: 2vw;"></div>
				<div class="col-sm-12"><img src="../img/aceite.jpg" style="width: 10vw;margin-left: 1vw;padding-top: 2vw;"></div>
				<div class="col-sm-12"><img src="../img/aceite2.jpg" style="width: 10vw;margin-left: 1vw;padding-top: 2vw;"></div>
				<div class="col-sm-12"><img src="../img/aceite.jpg" style="width: 10vw;margin-left: 1vw;padding-top: 2vw;"></div>
			</div>
		</div>
	</div>
</div>
</div>

</body>
</html>





