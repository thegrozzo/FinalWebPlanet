<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%HttpSession misesion= request.getSession();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>menu-usuario</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
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
<div id="header-form">
<h3>Sesion iniciada con: <%=misesion.getAttribute("usuario") %> ===> <a href="/cerrarsesion"><button>CERRAR SESION</button></a> </h3>
</div>
<br><br><br><br>
<h3>REVISA NUESTRA CARTELERA AQUI</h3>
<a href="controljsp?v=3"><img src="img/cartelera.jpg" style="width:300px;height:80px;"/></a>


<br>
<br>
<a href="controljsp?v=15" ><img src="img/reserva.gif" style="width:604px;height:70px" ></a>
<br>
<br>
<a href="controljsp?v=21" class="button large">
<span class="icon-code">Actualiza el horario y dia de tu reserva</span></a>
<br>
<a href="#" class="button large">
<span class="icon-code">actualiza tu informacion personal</span></a>



</div>
</body>
</html>