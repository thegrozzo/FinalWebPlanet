<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/estilo.css" type="text/css" rel="stylesheet" />
		<style>
	td {
	border-left: 1px solid black;
	border-top: 1px solid black;
	padding: 10px;
	text-align: left;
}
	</style>
	<title>Registro de Trabajadores</title>
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
		</div>
<div id="all">
     <h1>Registro</h1>

	
		<form action="registrotra" method="POST">
		<table>
		<tr>
		<th><label>Username: </label></th>
		<th><input type="text" name="user"></th>
  		</tr>
  		<tr>
  		<th><label>password: </label></th>
		<th><input type="password" name="pass"></th>
  		</tr>
  		<tr>
  		<th><label>Codigo: </label></th>
		<th><input type="text" name="id" maxlength="5"></th>
  		</tr>
  		<tr>
  		<th><label>Nombres:</label></th>
 		<th><input type="text" name="nombre"></th>
  		</tr>
  		<tr>
  		<th><label>Apellidos: </label></th>
		<th><input type="text" name="apellido"></th>
  		</tr>
  		<tr>
		<th><label>Sexo: </label></th>
		<th><select name="listaSexo">
  			<option value="Masculino">Masculino</option>
  			<option value="Femenino">Femenino</option>
  		</select></th>
  		</tr>
  		<tr>
  		<th><label>Email: </label></th>
		<th><input type="email" name="email" value="..@gmail.com"></th>
		</tr>
			<tr>
  		<th><label>Fecha de Nacimiento: </label></th>
  		
  		<th><input type="text" name="day" size="2" maxlength="2">
  		<input type="text" name="month" size="2" maxlength="2">
  		<input type="text" name="year" size="4" maxlength="4"></th>
		</tr>
  		<tr>
  		<th><input type="reset" name="Limpiar"></th>
  		<th><input type="submit" value="Hecho"></th>
  		</tr>
  		
  		</table>
		</form>
	</div>
</body>
</html>