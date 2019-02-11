  <!DOCTYPE html>
  <html>
  <head>
      <title>Vibeard</title>
      <meta charset="utf-8">

      <link rel="stylesheet" href="Librerias/css/bootstrap.min.css">
      <link rel="shortcut icon" href="img/favicon.png" />
      <link rel= "stylesheet" type ="text/css" href="../Librerias/css/bootstrap.css">
    <link rel= "stylesheet" type ="text/css" href="../Librerias/css/css_vistas.css">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <script src="Librerias/jquery-3.2.1.min.js"></script>
      <script src="Librerias/js/bootstrap.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

      <?php
      require_once '../Clases/Conexion.php';
      $c=new conectar();
      $conexion=$c->conexion();
      $codigo=$_GET['docid'];
      $sql= "SELECT * FROM vta_usuario WHERE docid = $codigo";
      $result = mysqli_query($conexion,$sql); 
      ?>
  </head>
  <body style="background-image: url(../img/catalogo_fondo.png);background-size: 100vw 50vw; background-color: #111;">
    <form action="../controladores/actualizar_puntos.php" method="POST">
        <?php while($vector=mysqli_fetch_row($result)){ ?>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6" style="margin-left: 1vw; margin-top: 5vw;">           

                    <label style="margin-top: 0.2vw; color: white; ">C.C/T.I</label><br>
                    <input type="text" class="form-control" name="docid" value="<?php echo ($vector[0]); ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;"><br><br>
                    <label style="margin-top: 0.2vw; color: white; ">NOMBRE</label><br>
                    <input type="text" class="form-control" name="nombre" value="<?php echo ($vector[2])?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;"><br><br>
                    <label style="margin-top: 0.2vw; color: white; ">APELLIDO</label><br>
                    <input type="text" class="form-control" name="apellido" value="<?php echo ($vector[3])?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;"><br><br>
                    <label style="margin-top: 0.2vw; color: white; ">PUNTOS ACUMULADOS</label><br>
                    <input type="text" class="form-control" name="puntosacum" value="<?php echo ($vector[10])?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;"><br><br>
                    <label style="margin-top: 0.2vw; color: white; ">PUNTOS REDIMIDOS</label><br>
                    <input type="text" class="form-control" name="puntosredi" value="<?php echo ($vector[11])?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;"><br><br>
                    <input type="submit" name="ENVIAR" class="btn btn-primary">
                </div>
                

            </div>
        </div>
        <?php } ?>




    </form>
</body>
</html>