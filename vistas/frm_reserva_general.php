<!DOCTYPE html>
<html>
<head>
  <title>Vibeard</title>
  <link rel="shortcut icon" href="../img/favicon.png" />
  <link rel= "stylesheet" type ="text/css" href="../Librerias/css/bootstrap.css">
  <link rel= "stylesheet" type ="text/css" href="../Librerias/css/css_vistas.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width device-width initial scale =1">
  <meta charset="utf-8">
</head>
<body  background="../img/fondo.png" background-size: 100% 1500% background-repeat: no-repeat; style="background-color: #111; ">

  <div class="container-fluid">
    <div class="row">
      <div class="col-12 col-sm-12">
        <!--Inicia navbar Bootstrap 4 situado en la parte superior-->
        <ul class="nav nav-pills nav-fill ">
          <li class="nav-item">
            <a class="nav-link active btn btn-info " href="frm_reserva_general.php">HORARIO GENERAL</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="frm_horario_barbero.php">HORARIO BARBERO</a>
          </li>
        </ul>
        <!--Finaliza navbar-->
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <table class="table table-striped table-dark" style="width: 90vw; margin-left:5vw; margin-top: 0.5vw;">
          <thead>
            <tr>
              <th scope="col">HORA</th>
              <th scope="col">JULIAN</th>
              <th scope="col">ESTILISTA1</th>
              <th scope="col">ESTILISTA2</th>
              <th scope="col">ESTILISTA3</th>
              <th scope="col">BARBERO</th>
              <th scope="col">ESTILISTA4</th>
              <th scope="col">MANICURISTA1</th>
              <th scope="col">MANICURISTA2</th>
              <th scope="col">ALEXANDRA</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th>08:00 am</th>
              <td><button type="button" class="btn btn-success"></button></td>
              <td><button type="button" class="btn btn-success"></button></td>
              <td><button type="button" class="btn btn-success"></button></td>
              <td><button type="button" class="btn btn-success"></button></td>
              <td><button type="button" class="btn btn-success"></button></td>
              <td><button type="button" class="btn btn-success"></button></td>
              <td><button type="button" class="btn btn-success"></button></td>
              <td><button type="button" class="btn btn-success"></button></td>
              <td><button type="button" class="btn btn-success"></button></td> 
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</body>
</html>