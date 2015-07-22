<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>sugerencias</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
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

		</div>
<div id="all">
	<br>
	<br>
	<h1>Escribenos tu sugerencia o reclamo</h1>
	<h2>Todas sus sugerencias seran utilizadas para mejorar la estadia en nuestros establecimientos</h2>
	<br>
	
	<form action="guardarsug" method="POST">
	<h3>Email</h3>
	<input type="email" name="email">
	<br>
	<br>
	<h3>Sugerencia</h3>

	<textarea name="comentario" rows="4" cols="80">
	</textarea>
	<br>
	<br>
	<input type="submit" value="ENVIAR">
	</form>
	</div>
</body>
</html>