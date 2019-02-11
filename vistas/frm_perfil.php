<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="shortcut icon" href="../img/favicon.png" />
    <link rel= "stylesheet" type ="text/css" href="../css/bootstrap.css">
    <link rel= "stylesheet" type ="text/css" href="../css/css_vistas.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta name="viewport" content="width device-width initial scale =1">
    <meta charset="utf-8">
    <?php
    require_once '../Clases/Conexion.php';
    $c=new conectar();
    $conexion=$c->conexion();
    $sql= "SELECT * FROM vta_usuario WHERE docid='10354258796'";
    $result=mysqli_query($conexion,$sql);
    $idgenero= "SELECT * FROM tbl_genero";
    $genero= mysqli_query($conexion,$idgenero);
    ?>
</head>

<body style="background-color: #111;">
<form action="../controladores/actualizar_barbero.php" method="POST">
    <!--inicia while para traer la informacion de la BD-->
    <?php while($vector=mysqli_fetch_row($result)){ ?>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3" style="margin-top:10vw; margin-left: vw;" align="center">
                <img src="../img/foto_perfil.png"  style="height: 15vw; width: 15vw;"><br><br><br>  
                <label style="color: white; font-size: 2.5vw;"><?php echo strtoupper ($vector[2]." ".$vector[3]); ?></label>            
            </div><br>
            <br>
            <br>
           
            <div class="col-sm-5" style="margin-top: -5vw;">
            <!--- inicia formulario para realizar actualizacion de informacion personal-->  
                <input type="hidden" name="docid" value="<?php echo ($vector[0]); ?>">
                <input type="hidden" name="imagen" value="<?php echo ($vector[0]); ?>">
                <label style="margin-top: 0.2vw; color: white; ">NOMBRE</label>
                <input type="text" name="nombre" class="form-control" value="<?php echo ($vector[2]); ?>" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;" ><br>
                <label style="margin-top: 0.2vw; color: white;">APELLIDOS</label>
                <input type="text" name="apellidos" class="form-control"  value="<?php echo ($vector[3]); ?>"  style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;" ><br>
                 <label style="margin-top: 0.2vw; color: white;">FECHA DE NACIMIENTO</label>
                <input type="text" name="fechanacimiento" class="form-control"  value="<?php echo ($vector[7]); ?>"  style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;" ><br> 
                <label style="margin-top: 0.2vw; color: white;">SEXO</label>
                <select name="genero" class="form-control"  style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;">
                            <option style=" color:black;" value="<?php echo $vector[8];?>">
                                <?php echo $vector[15];?>
                            </option>
                            <?php while ($verg=mysqli_fetch_array($genero)) { if ( $vector[15] <> $verg[1] ){ ?>
                                <option style="color:black;" value = "<?php echo $verg[0]; ?>">
                                    <?php echo $verg[1]; ?>
                                </option>
                            <?php }} ?>
                        </select><br>
                <label style="margin-top: 0.2vw; color: white;">CORREO</label>

                <input type="text" name="correo" class="form-control" value="<?php echo ($vector[4]); ?>"  style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;" > <br>
                <label style="margin-top: 0.2vw; color: white;">CERTIFICADOS</label>
                <textarea name="certificados" class="form-control" placeholder="Registrar certificados" style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;"><?php echo ($vector[12]); ?>  </textarea><br>
                <label style="margin-top: 0.2vw; color: white;">TELEFONO FIJO</label>
                <input type="text" name="telefono" class="form-control" placeholder="Registrar telefono fijo"  value="<?php echo ($vector[5]); ?>"  style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;" ><br>
                <label style="margin-top: 0.2vw; color: white;">CELULAR</label>
                <input type="text" name="celular" class="form-control" placeholder="Registrar celular" value="<?php echo ($vector[6]); ?>"  style="box-shadow: 0 0 8px #10C5CB;border-color:black;background-color: transparent; border-radius:5px 5px 5px 5px; color:white;" ><br>
                <input type="hidden" name="contrasena" value="<?php echo ($vector[1]); ?>">

                <input type="submit" value="ACTUALIZAR" class="btn btn-primary btn-block">
                <!--finaliza el formulario -->
            </div>
        </div>
    </div>
    <?php } ?>
</body>
</html>
