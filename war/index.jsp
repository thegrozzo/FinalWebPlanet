<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>CinePlanet</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<style>

* { box-sizing: border-box; }

body {
	font-family: "HelveticaNeue-Light","Helvetica Neue Light","Helvetica Neue",Helvetica,Arial,"Lucida Grande",sans-serif;
  color:white;
  font-size:12px;
}

form {
 	background:#111; 
  width:300px;
  margin:30px auto;
  border-radius:0.4em;
  border:1px solid #191919;
  overflow:hidden;
  position:relative;
  box-shadow: 0 5px 10px 5px rgba(0,0,0,0.2);
}

form:after {
  content:"";
  display:block;
  position:absolute;
  height:1px;
  width:100px;
  left:20%;
  background:linear-gradient(left, #111, #444, #b6b6b8, #444, #111);
  top:0;
}

form:before {
 	content:"";
  display:block;
  position:absolute;
  width:8px;
  height:5px;
  border-radius:50%;
  left:34%;
  top:-7px;
  box-shadow: 0 0 6px 4px #fff;
}

.inset {
 	padding:20px; 
  border-top:1px solid #19191a;
}

form h1 {
  font-size:18px;
  text-shadow:0 1px 0 black;
  text-align:center;
  padding:15px 0;
  border-bottom:1px solid rgba(0,0,0,1);
  position:relative;
}

form h1:after {
 	content:"";
  display:block;
  width:250px;
  height:100px;
  position:absolute;
  top:0;
  left:50px;
  pointer-events:none;
  transform:rotate(70deg);
  background:linear-gradient(50deg, rgba(255,255,255,0.15), rgba(0,0,0,0));
  
}

label {
 	color:white;
  display:block;
  padding-bottom:9px;
}

input[type=text],
input[type=password] {
 	width:100%;
  padding:8px 5px;
  background:linear-gradient(#1f2124, #27292c);
  border:1px solid #222;
  box-shadow:
    0 1px 0 rgba(255,255,255,0.1);
  border-radius:0.3em;
  margin-bottom:20px;
  color: white;
}

label[for=remember]{
 	color:white;
  display:inline-block;
  padding-bottom:0;
  padding-top:5px;
}

input[type=checkbox] {
 	display:inline-block;
  vertical-align:top;
}

.p-container {
 	padding:0 20px 20px 20px; 
}

.p-container:after {
 	clear:both;
  display:table;
  content:"";
}

.p-container span {
  display:block;
  float:left;
  color:#0d93ff;
  padding-top:8px;
}

input[type=submit] {
 	padding:5px 20px;
  border:1px solid rgba(0,0,0,0.4);
  text-shadow:0 -1px 0 rgba(0,0,0,0.4);
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,0.3),
    inset 0 10px 10px rgba(255,255,255,0.1);
  border-radius:0.3em;
  background:#0184ff;
  color:white;
  float:right;
  font-weight:bold;
  cursor:pointer;
  font-size:13px;
}

input[type=submit]:hover {
  box-shadow:
    inset 0 1px 0 rgba(255,255,255,0.3),
    inset 0 -10px 10px rgba(255,255,255,0.1);
}

input[type=text]:hover,
input[type=password]:hover,
label:hover ~ input[type=text],
label:hover ~ input[type=password] {
 	background:#27292c;
}
</style>
 <script> 
//creo array de imágenes 
array_imagen = new Array(6) 
array_imagen[0] = new Image(450,600)
array_imagen[0].src = "img/cartelera/12.jpg" 
array_imagen[1] = new Image(450,600)
array_imagen[1].src = "img/664.jpg" 
array_imagen[2] = new Image(450,600)
array_imagen[2].src = "img/672.jpg" 
array_imagen[3] = new Image(450,600)
array_imagen[3].src = "img/637.jpg" 
array_imagen[4] = new Image(450,600)
array_imagen[4].src = "img/632.jpg"
array_imagen[5] = new Image(450,600)
array_imagen[5].src = "img/648.jpg"
//variable para llevar la cuenta de la imagen siguiente 
contador = 0 

//función para rotar el banner 
function alternar_banner(){ 
   	window.document["banner"].src = array_imagen[contador].src 
   	contador ++ 
   	contador = contador % array_imagen.length 
   	setTimeout("alternar_banner()",2000) 
} </script> 

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script>
function realizaProceso(valorCaja1, valorCaja2){
	if( valorCaja1.trim().length==0){
		alert("¡Debe ingresar un USERNAME!");
		$('#user').focus();
		return false;
	}
	if( valorCaja2.trim().length==0){
		alert("¡Debe ingresar una CONTRASEÑA!");
		$('#pass').focus();
		return false;
	}
}
</script>

</head>

<body onload="alternar_banner()">
<div id="barra-lateral">
			<div id="logo-menu">
			</div>

			<div id="contenedor-logos-primero" class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="index.jsp">HOME</a></p>
			</div>
			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="controljsp?v=3">CARTELERA</a></p>
			</div>

			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="controljsp?v=16">SUGERENCIAS</a></p>
			</div>

			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="controljsp?v=12">NOSOTROS</a></p>
			</div>
			
			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="controljsp?v=8">ADMINISTRAR</a></p>
			</div>
			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="Descripcion.pdf">PLAN</a></p>
			</div>
			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="site-map.pdf">SITE-MAP</a></p>
			</div>
		</div>
	<div id="all">
	<a id="top"></a>
		<div id="header">
			<div class="wrapper-top">
				<div id="logo">
			
					<img src="img/webplanet.png " style="width:800px;height:260px;"/>			
				</div>
				
			</div><!-- end wrapper-top -->
			
			
		</div><!-- end header -->

		<div id="destacados">
			<div class="destacados-slides">
				<div><img src="img/cartelera/12.jpg" name="banner" width=450 height=600 border=0></div>
				</div>
		</div>
		<div id="section">

<form action="login" method="get">
  <h1>INICIAR SESION</h1>
  <div class="inset">
  <p>
    <label for="email">USERNAME</label>
    <input type="text" name="user" id="user">
  </p>
  <p>
    <label for="password">PASSWORD</label>
    <input type="password" name="pass" id="pass">
  </p>
    <p>
    <h4><span id="resultado"></span></h4>
  </p>
  </div>
  <p class="p-container">
    <input type="submit" value="Log in">
  <a href="controljsp?v=13">registrate</a>
  </p>
</form>

			
	</div>

</body>
</html>