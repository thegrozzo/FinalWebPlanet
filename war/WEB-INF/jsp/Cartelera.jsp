<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.*"%>
<%@page import="beans.*"%>
<%@page import="servlets.*"%>
<%List<Pelicula> peliculas = Contenido.listaPel();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cartelera</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<style>
.zebra {
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

table {
    border-collapse: collapse;
    border-spacing: 0;
	width:100%;
	-webkit-box-shadow:  0px 2px 1px 5px rgba(242, 242, 242, 0.1);
    box-shadow:  0px 2px 1px 5px rgba(242, 242, 242, 0.1);
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
 
 <table  class="zebra">
 <tbody>
 <tr>
 <th>CARRIE</th>
 <th>MINIONS</th>
 <th>ANTMAN</th>
 <th>DOS LOCAS EN FUGA</th>
 <th>ESCALOFRIO SANGRIENTO</th>
 <th>CRIMENES OCULTOS</th>
 </tr>
 
  <tr>
 <th><img src="img/cartelera/1.png" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/2.png" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/3.png" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/4.png" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/5.png" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/6.png" style="width:120px;height:160px" ></th>
 </tr>
 
   <tr>
 <th>TERREMOTO</th>
 <th>INTENSA-MENTE</th>
 <th>JURASSIC-WORLD</th>
 <th>TERMINATOR-GENESIS</th>
 <th>LA CASA DEL DEMONIO</th>
 <th>TED-2</th>
 </tr>
   <tr>
 <th><img src="img/cartelera/7.jpg" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/8.jpg" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/9.jpg" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/10.jpg" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/11.jpg" style="width:120px;height:160px" ></th>
 <th><img src="img/cartelera/12.jpg" style="width:120px;height:160px" ></th>
 </tr>
 </tbody>
 </table>
 </div>

</body>
</html>