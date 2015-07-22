<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.*"%>
<%@page import="beans.*"%>
<%@page import="servlets.*"%>
<%List<Pelicula> u = Contenido.listaPel();%>
<!DOCTYPE html>
<html>
<title>Modificar-Reserva</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">

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

	<form action="/modificar" method="get">
	
	<h3>pelicula</h3>
	
	 <select name="nombre">
				    <%
				    for (int idx = 0; idx < u.size(); idx++) {
				     Pelicula t = (Pelicula)u.get(idx);
				    %>

					    <option value="<%= t.getNombre() %>"><%= t.getNombre() %></option>
					
				    <%}%>
				  </select> 

	<h3>Dia:</h3>

	<select name="dia">
	<option value="lunes">lunes</option>
  	<option value="martes">martes</option>
  	<option value="miercoles">miercoles</option>
  	<option value="jueves">jueves</option>
  	<option value="viernes">viernes</option>
  	<option value="sabado">sabado</option>
  	<option value="domingo">domingo</option>
	</select>
	
	<h3>Horario</h3>
	<input type="text" name="hora">
	
	<input type="submit" value="Hecho">
</form>

</div>
</body>
</html>