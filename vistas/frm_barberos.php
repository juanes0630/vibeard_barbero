<!DOCTYPE html>
<html>
<head>
  <title>Vibeard</title>
  <link rel="shortcut icon" href="../img/favicon.png" />
  <link rel= "stylesheet" type ="text/css" href="../Librerias/css/estilos.css">
  <link rel= "stylesheet" type ="text/css" href="../Librerias/css/bootstrap.css">
  <meta name="viewport" content="width device-width initial scale =1">
  <meta charset="utf-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
</style>
<?php
require_once '../Clases/Conexion.php';
$c=new conectar();
$conexion=$c->conexion();
$sql= "SELECT * FROM vta_usuario WHERE tipo_de_usuario = 1";
$result = mysqli_query($conexion,$sql);
?>
</head>

<body style="background-color: #111;">
  <div class="container-fluid">
    <div class="row">     
      <div class="col-sm-9">
        <ul class="nav nav-pills nav-fill ">
          <li class="nav-item">
            <a class="nav-link" href="frm_clientes.php">CLIENTES</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active btn btn-info" href="frm_barberos.php">BARBEROS</a>
          </li>
        </ul>
      </div>
      <div class="col-sm-3"></div>
    </div>
    <div class="row" style=" margin-top: 1vw;">
      <div class="col-sm-12" align="center">
        <div id="demo" class="carousel slide" data-ride="carousel" style="width: 100%;">
          <!-- The slideshow -->
          <div class="carousel-inner">
            <div class="carousel-item active" style="background-image: url(../img/index_barberos.png);background-size: 100vw 50vw;">
              <div class="container-fluid" >
                <div class="row">
                  <div class="col-sm-12" style="width: 100%;height: 100%;margin: 20.45vw"></div>
                </div>
              </div>
            </div>

            <?php while($vector=mysqli_fetch_row($result)){ ?>
            <div class="carousel-item">
              <div class="container-fluid" >
                <div class="row">
                  <div class="col-sm-1" align="center">
                  </div>
                  <div class="col-sm-5" align="center">
                    <label style="color:white; margin-top:5vw;font-size: 3vw;font-family: lucida bright"><?php echo strtoupper($vector[2]); ?> </label><br>
                    <label style="color:white; margin-top:2vw;font-size: 1.2 vw;font-family: lucida bright"><?php echo strtoupper($vector[3]) ?> </label><br><br><br>
                    <div style="display: inline-flex;">
                      
                      <hr style="color: white;border-style: inset;border-width: 1px;width: 10vw;"><img src="../img/twitter.png" style="width: 2.5vw;height: 2.5vw;margin-left: 2vw;margin-right: 2vw;"><hr style="color: white;border-style: inset;border-width: 1px;width: 10vw;">

                    </div><br><br>
                    <label style="color:white; margin-top:vw;font-size: 1.2 vw;font-family: lucida bright"><?php echo strtoupper($vector[6]." - ".$vector[5]) ?> </label><br><br><br>
                  </div>

                  <div class="col-sm-6">
                    <br><br>
                    <img src="../img/user2.jpg" alt="Chicago" style="width:80%;">
                  </div>
                </div>
              </div>
            </div>
            <?php } ?>
          </div>

          <!-- Left and right controls -->
          <a class="carousel-control-prev" href="#demo" data-slide="prev" style="margin-left: 3vw;">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
        </div>

      </div>
      
      
    </div>
  </div>

</body>
</html>   