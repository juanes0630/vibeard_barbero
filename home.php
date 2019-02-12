<!DOCTYPE html>
<html>
<head>
    <title>vibeard</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="Librerias/css/bootstrap.min.css">
    <link rel="shortcut icon" href="img/favicon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="Librerias/jquery-3.2.1.min.js"></script>
    <script src="Librerias/js/bootstrap.min.js"></script>
    
</head>
<style type="text/css">

@font-face
{
 font-family: "Hand of Sean";
 src: url("fonts/handsean.ttf");
}

#wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#wrapper.toggled {
    padding-left: 230px;
}

#sidebar-wrapper {
    z-index: 1000;
    position: fixed;
    left: 10px;
    width: 0;
    height: 81%;
    margin-top:15px;
    overflow-y: auto;
    background: #000;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
    border-radius: 10px 10px 10px 10px;
}

#wrapper.toggled #sidebar-wrapper {
    width: 170px;
}

#page-content-wrapper {
    width: 100%;
    position: absolute;
    padding: 15px;
}

#wrapper.toggled #page-content-wrapper {
    position: absolute;
    margin-right: -170px;
}

/* Sidebar Styles */

.sidebar-nav {
    position: absolute;
    top: 0;
    width: 170px;/************************Este es el ancho del interior del nav***********************/
    margin: 0;
    padding: 0;
    list-style: none;

}

.sidebar-nav li {
    text-indent: 20px;
    line-height: 40px;
}

.sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999999;
}

.sidebar-nav li a:hover {
    text-decoration: none;
    color: #fff;
    background-color: #000;
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
    text-decoration: none;
}

.sidebar-nav > .sidebar-brand {
    height: 65px;
    font-size: 18px;
    line-height: 60px;
}

.sidebar-nav > .sidebar-brand a {
    color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover {
    color: #fff;
    background: none;
}

#iframe{
    width: 100%;
    height:34.7em;
    border:0vw;
}
#nav_imagen{
    width: 5em;
    margin-left: 1em;
    margin-top: 1em;
}
#nav_letra{
    font-size: 1.2em;
    color:#fff;
    margin-bottom: 1em;
    font-family: RobotoCondensedLight;
}
#nav_letra:hover{
    -webkit-transform: scale(1.3);
        -ms-transform: scale(1.3);
        -moz-transform: scale(1.3);
        transform: scale(1.3);
        background-color: white;
        color: black;
        width:7.7em;
}
#nav_letra:focus{
        background-color: white;
        color: black
        
}
#barra_lateral {
    background-color:#001515;
    height: 100%;
}
#barra_lateral ul {
    list-style: none;

}
#barra_lateral ul li ul li img{
    width: 1.5em;
}
#barra_lateral ul li img{
    margin-left: -0.7em
}
#menu_redes{
    display: inline-flex;
    margin-left:-4em;
}
#menu_redes li a:hover{
    background-color: transparent;
    -webkit-transform: scale(1.3);
        -moz-transform: scale(1.3);
        -ms-transform: scale(1.3);
        transform: scale(1.3);
}

@media(min-width:768px) {
    #wrapper {
        /*********************************Este es el paading del iframe*******************************/
        padding-left: 180px;
        
    }

    #wrapper.toggled {
        padding-left: 0;

    }

    #sidebar-wrapper {
        /***********************************Este es el tamaño del menú*******************************/
        width: 170px;
    }

    #wrapper.toggled #sidebar-wrapper {
        width: 0;
    }

    #page-content-wrapper {
        padding: 20px;
        position: relative;
    }

    #wrapper.toggled #page-content-wrapper {
        position: relative;
        margin-right: 0;
    }

}
</style>
<body style="background-color: #111">


 <!-------------navbar------>
 <nav class="navbar navbar-dark bg-dark" style="background-color: #111 !important">
    <button class="navbar-toggler boton" type="button"  href="#menu-toggle" id="menu-toggle">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand"><img src="img/Vibeard_blanco.png" style="width:5em;"/></a>
    <div class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img src="img/foto_perfil.png" class="img-fluid" style="width:3em;">
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">YOTO</a>

          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Ajustes</a>
          <a class="dropdown-item" href="#">Cerrar Sesion</a>
          <a class="dropdown-item" href="vistas/frm_informacion.php" target="iframe">Ayuda</a>
      </div>
  </div>
</nav>

<div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper" class="sidebar sidebar-dark bg-dark" >
        <ul class="sidebar-nav" id="barra_lateral">
            <li>
                <ul >
                    <li>
                        <img src="img/Universal_blanco.png" id="nav_imagen">
                    </li>
                    <li>
                        <ul id="menu_redes">
                            <li><a href="https://www.facebook.com/JULIANTENDENCIASPELUQUERIAJ.A"><img src="img/facebook.png"></a></li>
                            <li><a href="https://instagram.com/jatendencias/?hl=es-la"><img src="img/instagram.png"></a></li>
                            <li><a href=""><img src="img/twitter.png"></a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <br>
            <li>

            </li>
            <li>
                <a href="vistas/frm_perfil.php" id="nav_letra" target="iframe">
                    &nbsp;&nbsp;&nbsp;&nbsp;Perfil
                </a>
            </li>
            <li>
                <a href="/Librerias/calendario/" id="nav_letra" target="iframe">
                    &nbsp;&nbsp;&nbsp;&nbsp;Reserva
                </a>
            </li>
            <li>
                <a href="vistas/frm_clientes.php" id="nav_letra" target="iframe">
                    &nbsp;&nbsp;&nbsp;&nbsp;Usuarios
                </a>
            </li>
            <li>
                <a href="vistas/frm_catalogo.php" id="nav_letra" target="iframe"> 
                    &nbsp;&nbsp;&nbsp;&nbsp;Catalogo
                </a>
            </li>
            <li>
                 <a href="vistas/frm_puntos.php" id="nav_letra" target="iframe">
                &nbsp;&nbsp;&nbsp;&nbsp;Puntos</a>
            </li>
            <li>
                <a href="vistas/frm_informacion.php" id="nav_letra" target="iframe">
                &nbsp;&nbsp;&nbsp;&nbsp;Informacion</a>
            </li>
        </ul>
    </div>
    <!-- /#sidebar-wrapper -->
   <iframe src="vistas/frm_horario_barbero.php" id="iframe" name="iframe"></iframe>
</div>
<script type="text/javascript">
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
  });
</script>
</body>
</html>
