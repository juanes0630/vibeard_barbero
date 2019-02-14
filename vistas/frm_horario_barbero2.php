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
    ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
    require_once '../Clases/Conexion.php';
    require_once '../Clases/Reserva.php';
    $c=new conectar();
    $reserva = new reserva();
    $conexion=$c->conexion();
    $sql="SELECT * FROM vta_reserva";
    $reservas = mysqli_query($conexion, $sql);
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
                    <?php echo $reserva->pintarReservas($reservas); ?>
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

</body>
</html>
