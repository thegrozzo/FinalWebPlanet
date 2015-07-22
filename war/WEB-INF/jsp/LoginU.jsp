<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/estilo.css">
	<style>
.button {
	background:#7f8c8d;
	color:#fff;
	display:inline-block;
	font-size:1.25em;
	margin:20px;
	padding:10px 0;
	text-align:center;
	width:200px;
	text-decoration:none;
	box-shadow:0px 3px 0px #373c3c;
}
 
.button span {
	margin-right:10px;
}
 
/*Colores*/
.button.blue {
	background:#3498db;
	box-shadow:0px 3px 0px #266792;
}
 
.button.yellow {
	background:#e67e22;
	box-shadow:0px 3px 0px #b55704;
}
 
 
/*Tamaños*/
.button.medium {
	width:180px;
}
 
 
.button.large {
	width:410px;
}
 
 
.button.radius {
	border-radius:50px;
}
 
/*Efectos, Hover*/
.button:hover {
	box-shadow:0px 0px 0px;

}
</style>
	<title>login-usuarios</title>
</head>
<body>

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
		
		</div>
<div id="all">
        <h1>----Logueese----</h1>

	

			<form action="login" method="get">
		
  			<label>Ingrese Usuario: </label>
  			<input type="text" name="user">
  			
  		
  			<label>Password: </label>
			<input type="password" name="pass">
			
			
  			<input type="reset" name="Limpiar">
  			<input type="submit" value="Login">
  			
  			

			</form>
	</div>
</body>
</html>