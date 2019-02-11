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
  $sql="SELECT * FROM vta_venta";
  $result= mysqli_query($conexion, $sql);
  $pro="SELECT * FROM vta_profesional";
  $profe=mysqli_query($conexion,$pro);
  $product="SELECT * FROM vta_nomproducto";
  $produc=mysqli_query($conexion,$product)
    ?>
</head>
<body style="background-color: #111;">

  <table class="table table-dark" style="width: 90vw; margin-left:2vw; margin-top: 0.5vw;">

    <thead>
      <tr style="text-align: center;">
        <td class="bg-dark">CODIGO</td>
        <td class="bg-dark">CLIENTE</td>
        <td class="bg-dark">PROFESIONAL</td>
        <td class="bg-dark">FECHA</td>
        <td class="bg-dark">HORA</td>
        <td class="bg-dark">PRODUCTO</td>
        <td class="bg-dark">PUNTOS ASIGNADOS</td>
         <td class="bg-dark">EDITAR O REDIMIR PUNTOS</td>
      </tr>

    </thead>
    <tbody>
      <?php while ($vector=mysqli_fetch_array($result)){ 
        $profesional=mysqli_fetch_array($profe);
        $producto=mysqli_fetch_array($produc);
        ?>
        <tr style="text-align: center;">

          <td><?php echo $vector[0];?></td>
          <td><?php echo $vector[5].' '.$vector[6];?> </td>
          <td><?php echo $profesional[2].' '.$profesional[3];?> </td>
          <td><?php echo $vector[3];?> </td>
          <td><?php echo $vector[4];?> </td>
          <td><?php echo $producto[2];?> </td>
          <td><?php echo $vector[7];?> </td>
          <td><a href="frm_updated_puntos.php?docid=<?php echo $vector[1]; ?>" class="btn btn-info">Editar</a>&nbsp;<button type="button" class="btn btn-success">Redimir</button>&nbsp;<button type="button" class="btn btn-danger">Eliminar</button></td>

        </tr>
        <?php } ?>
      </tbody>
    </table>

  </body>
  </html>