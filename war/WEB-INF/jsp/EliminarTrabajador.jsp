<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="beans.*"%>
<%@page import="servlets.*"%>
<%List<Usuariotra> us = Contenido.listatra();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/estilo.css">
	<style>
	td {
	border-left: 1px solid black;
	border-top: 1px solid black;
	padding: 10px;
	text-align: left;
}
	</style>
	<title>Eliminar Trabajador</title>
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

<h1>Eliminar Cliente</h1>

<form action="eliminartrabajador" method="get">
	<table>
	<tr>	
  <th><label>Administradores Registrados: </label></th>
  <th><select name="id">
  				    <%
				    for (int idx = 0; idx < us.size(); idx++) {
				     Usuariotra u = (Usuariotra)us.get(idx);
				    %>
				    <option value="<%= u.getID() %>"><%= "CODIGO:"+u.getID()+"-NOMBRE:"+u.getNombre()+" "+u.getApellido() %></option>
				     <%}%>
				  </select></th>		
  <th><input type="submit" value="Eliminar"></th>
</tr>
</table>
</form>
	</div>
</body>
</html>