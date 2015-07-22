<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="beans.*"%>
<%@page import="servlets.*"%>
<%List<Pelicula> peliculas = Contenido.listaPel();%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Menu-Cartelera</title>
	<link href="css/estilo.css" type="text/css" rel="stylesheet" />
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

<table class="zebra">
<thead>
    <tr>
     <th>Pelicula</th>
      <th>Autor</th>
      <th>Idioma</th>
      <th>Horarios</th>
      <th>Reservas</th>
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
    <td><%= a.getReservas() %></td>
   </tr>

<%}%>
  </tbody>
 </table>
 <br>
 <br>
 <h3>Añadir Pelicula</h3>
 <form action="/añadirpel" method="get">
  <table>
  <tbody>
 <tr>
  			<th><label>Ingrese Nombre:</label></th>
  			<th><input type="text" name="nombre" id="nombre"></th>
  			<th><label>Ingrese Autor:</label></th>
  			<th><input type="text" name="autor" id="autor"></th>
  			<th><label>Idioma:</label></th>
  			<th><select name="idioma">
  			<option value="español">español</option>
  			<option value="ingles">ingles</option>
  			</select></th>
  			<th><input type="submit" value="Añadir"></th>
</tr>
</tbody>			
</table>  			
</form>
<br>
<br>			
 <h3>Eliminar Pelicula</h3>
 <form action="/eliminarpel" method="get">
 <table>
 <tr>
  			<th><label>Nombre:</label></th>
  			<th><select name="nombre">
  				    <%
				    for (int idx = 0; idx < peliculas.size(); idx++) {
				     Pelicula t = (Pelicula)peliculas.get(idx);
				    %>
				    <option value="<%= t.getNombre() %>"><%= t.getNombre() %></option>
				     <%}%>
				  </select></th>
  			<th><input type="submit" value="Eliminar"></th>
</tr>			
</table>	
</form>	

 <br>
<br>			
 <h3>Añadir horario a una Pelicula</h3>
		<form action="/añadirhorario" method="get">	
		<table>
		<tr>
		<th><label>Pelicula:</label></th>
		<th><select name="nombre">
  				    <%
				    for (int idx = 0; idx < peliculas.size(); idx++) {
				     Pelicula t = (Pelicula)peliculas.get(idx);
				    %>
				    <option value="<%= t.getNombre() %>"><%= t.getNombre() %></option>
				     <%}%>
				  </select></th>
		<th><label>Ingrese horario:</label></th>
		<th><input type=text name="hora"></th>
		<th><input type="submit" value="Añadir"></th>
		</tr>
	</table>
	</form>
	
 <br>
<br>			
 <h3>Quitar horario a una Pelicula</h3>
		<form action="/quitarhorario" method="get">	
		<table>
		<tr>
		<th><label>Pelicula:</label></th>
		<th><select name="nombre">
  				    <%
				    for (int idx = 0; idx < peliculas.size(); idx++) {
				     Pelicula t = (Pelicula)peliculas.get(idx);
				    %>
				    <option value="<%= t.getNombre() %>"><%= t.getNombre() %></option>
				     <%}%>
				  </select></th>
		<th><label>Ingrese horario:</label></th>
		<th><input type=text name="hora"></th>
		<th><input type="submit" value="Eliminar"></th>
		</tr>
	</table>
	</form>			
 </div>
</body>
</html>