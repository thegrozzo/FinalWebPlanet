<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
<%@page import="beans.*"%>
<%@page import="servlets.*"%>
<%List<Pelicula> peliculas = Contenido.listaPel();%>

<!DOCTYPE html>
<html>
<title>reservas</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<style>
.zebra {
 border-collapse: collapse;
    border-spacing: 0;
	width:100%;
	-webkit-box-shadow:  0px 2px 1px 5px rgba(242, 242, 242, 0.1);
    box-shadow:  0px 2px 1px 5px rgba(242, 242, 242, 0.1);
	border: 1px solid black;
}

.zebra td {
	border-left: 1px solid black;
	border-top: 1px solid black;
	padding: 10px;
	text-align: left;
}

.zebra th, .zebra th:hover {
	border-left: 1px solid black;
	border-bottom: 1px solid #828282;
	padding: 20px;
	background-color:#151515 !important;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#151515), to(#404040)) !important;
	background-image: -webkit-linear-gradient(top, #151515, #404040) !important;
	background-image:    -moz-linear-gradient(top, #151515, #404040) !important;
	 background-image:     -ms-linear-gradient(top, #151515, #404040) !important;
    background-image:      -o-linear-gradient(top, #151515, #404040) !important;
    background-image:         linear-gradient(top, #151515, #404040) !important;
    color:#fff !important;
    font-weight:normal;
}
.zebra tbody tr:nth-child(even) {
    background: #000 !important;
	color:#fff;
}
.zebra tr:hover *{
    background: #eeeeee;
	color:#000;
}
.zebra tr {
	background:#404040;
	color:#fff;
}

</style>
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


<table class="zebra">
<thead>
    <tr>
     <th>Pelicula</th>
      <th>Autor</th>
      <th>Idioma</th>
      <th>Horarios</th>
    </tr>
    </thead>
  <tbody>
<%
 for (int idx = 0; idx < peliculas.size(); idx++) {
     Pelicula a = (Pelicula)peliculas.get(idx);
%>
   <tr>
    <td><%= a.getNombre() %></td>
    <td><%= a.getAutor() %></td>
    <td><%= a.getIdioma() %></td>
    <td><%= a.getHorarios() %></td>
   </tr>

<%}%>
  </tbody>
 </table>
<br>
<br>
<p><h3><b>Nota:</b>Los Horario sson los mismos todos los dias de la semana.</h3>
	<form action="cerrar" method="POST">
	
	<h3>Selecciona tu pelicula</h3>
	
	<select name="nombre">
  				    <%
				    for (int idx = 0; idx < peliculas.size(); idx++) {
				     Pelicula t = (Pelicula)peliculas.get(idx);
				    %>
				    <option value="<%= t.getNombre() %>"><%= t.getNombre() %></option>
				     <%}%>
				  </select>

	<h3>Ingresa el dia</h3>

	<select name="dia" >
	<option value="lunes">lunes</option>
	<option value="martes">martes</option>
	<option value="miercoles">miercoles</option>
	<option value="jueves">jueves</option>
	<option value="viernes">viernes</option>
	<option value="sabado">sabado</option>
	<option value="domingo">domingo</option>
	</select>

	<h3>Selecciona tu horario</h3>
	<input type="text" name="horario" size="5" maxlength="5">
<br>
	<input type="submit" value="Hecho">
</form>



</div>
</body>
</html>