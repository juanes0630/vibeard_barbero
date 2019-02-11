<!DOCTYPE html>
<html>
<head>
	<title>vibeard</title>
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
 $sql="SELECT * FROM vta_reserva";
 $reser= mysqli_query($conexion, $sql);
 $vta2="SELECT * FROM vta_reserva2";
 $reser2=mysqli_query($conexion, $vta2);
 ?>
 <script>
  function cambiarColor(){
    document.getElementById('prueba').style.backgroundColor = "#5bc0de";
  }

</script>



</head>
<body background="../img/fondo.png" background-size: 100% 1500% background-repeat: no-repeat; style="background-color: #111; ">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12 col-sm-12">
        <!--Inicia navbar Bootstrap 4 situado en la parte superior-->
        <ul class="nav nav-pills nav-fill ">
          <li class="nav-item">
            <a class="nav-link " href="frm_reserva_general.php">HORARIO GENERAL</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active btn btn-info" href="frm_horario_barbero.php">HORARIO BARBERO</a>
          </li>
        </ul>
        <!--Finaliza navbar-->
      </div>
      <div class="col-sm-12">  
        <table class="table table-dark" style="width: 90vw; margin-left:5vw; margin-top: 0.5vw;">
          <thead>
            <tr style="text-align: center;">
              <th scope="col" class="bg-primary">HORA</th>
              <th scope="col" class="bg-primary">FECHA</th>
              <th scope="col" class="bg-primary">PROFESIONAL</th>
              <th scope="col" class="bg-primary" style="text-align: center;">CLIENTE</th>
              <th scope="col" class="bg-primary">ESTADO</th>
              <th scope="col" class="bg-primary">TIPO DE RESERVA</th>
              <th scope="col" class="bg-primary">No disponible/Asignar punt</th>
            </tr>
          </thead>
          <tbody>
           <?php while ($vector=mysqli_fetch_array($reser)){ 
            if ($vector[4]= $i) {?>
            <tr id="prueba" style="text-align: left;">
              <td><?php  echo  $i.':'.$j;?></td>
            <td><?php echo $vector[3];?></td>
            <td><?php echo $vector2[8].' '.$vector2[9];?></td>
            <td><?php echo $vector[8].' '. $vector[9];?></td>
            <td style="text-align: center;"><?php echo $vector[10];?></td>
            <td style="text-align: center;"><?php echo $vector[11];?></td>
            <td><button type="button" onclick="cambiarColor();" class="btn btn-info">No Disponible</button>
              &nbsp;<a href="frm_updated_puntos.php?docid=<?php echo $vector[1]; ?>" class="btn btn-success" onclick="javascript:window.location.reload();">A.Puntos </a>
            </td>
            <?php  }?> 

            <?php  
            $vector2=mysqli_fetch_array($reser2);
            for ($i= 7; $i<=19; $i++){

              for ($j=0; $j <=30 ; $j+=30) { 
                if ($j==0) {
                  $j='00';
                }
                $hor=$i.':'.$j;

                ?>
                




                 













                 <?php  }}}?>
               </tr>

             </tbody>
           </table>
           <inpu type="boton" value="actualizar" class="btn btn-warning" onclick="javascript:window.location.reload();"/>
         </div>
       </div>
     </div>


     <section id="tabla">
      <table border="1">
        <tr>
          <td onclick="change(this);">Celda 1</td>
          <td onclick="change2(this);">celda 2</font></td>
        </tr>
      </table>
    </section>


    <script>
      function reFresh() 
      location.reload(true)
    }
    /* Establece el tiempo 1 minuto = 60000 milliseconds. */
    window.setInterval("reFresh()",60000);
// -->

</script>
<?php 






?>





</body>
</html>