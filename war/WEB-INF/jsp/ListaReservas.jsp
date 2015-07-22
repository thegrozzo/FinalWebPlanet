<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@page import="java.util.*"%>
	<%@page import="beans.*"%>
	<%@page import="servlets.*"%>
	<%List<Pelicula> pel = Contenido.listaPel();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/estilo.css">
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
	<title>Lista de Reservas</title>
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
     <th>PELICULA</th>
     <th>RESERVAS</th>
    </tr>
    </thead>
  <tbody>
<%
 for (int idx = 0; idx < pel.size(); idx++) {
     Pelicula p = (Pelicula)pel.get(idx);
%>
   <tr>
    <td><%= p.getNombre() %></td>
    <td><%= p.getReservas() %></td>
   </tr>

<%}%>
  </tbody>
 </table>
 <br>
 <br>
 <h1>Anular Reserva</h1>

<form action="anular" method="get">
<table>
<tr>
  <th><label>Seleccione la Pelicula</label></th>
  <th><input type="text" name="pelicula"></th>		
  <th><label>Ingrese Nombre de Usuario</label></th>
  <th><input type="text" name="usuario"></th>		
  <th><input type="submit" value="Eliminar"></th>
 <tr>
</table>		
</form>
	</div>
</body>
</html>

