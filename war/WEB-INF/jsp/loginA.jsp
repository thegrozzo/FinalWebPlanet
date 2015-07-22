<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/estilo.css">
	<title>Login-Administrador</title>
	<style>
	
#bod{
text-align:center;
font-family:verdana, arial, helvetica, sans-serif;
}

#formulario{
border:solid 2px #708090;
background:#dcdcdc;
margin:0 auto;
width:400px;
height:175px;
padding:14px;
}
#formulario h1 {
font-size:24px;
font-weight:bold;
margin-bottom:10px;
color:#696969;
}
#formulario label{
display:block;
font-weight:bold;
text-align:right;
width:140px;
float:left;
}
#formulario .detalle{
color:#666666;
display:block;
font-size:11px;
font-weight:normal;
text-align:right;
width:140px;
}
#formulario input[type=text]{
float:left;
font-size:12px;
padding:4px 2px;
border:solid 1px #708090;
width:200px;
margin:2px 0 20px 10px;
}
#formulario input[type=password]{
float:left;
font-size:12px;
padding:4px 2px;
border:solid 1px #708090;
width:200px;
margin:2px 0 20px 10px;
}
#formulario input[type=submit]{
clear:both;
margin:0 auto;
width:100px;
height:31px;
background:#696969;
text-align:center;
line-height:31px;
color:#FFFFFF;
font-size:11px;
font-weight:bold;
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

	<div id="bod">
<div id="formulario">
       <form action="registrodb" method="get">
          <h1>LOGUEESE</h1>

          <label>USERNAME
             <span class="detalle">Ingrese su usuario</span>
          </label>
          <input type="text" name="user" id="user" />
          <label>PASSWORD
             <span class="detalle">Ingrese su contrasena</span>
          </label>
          <input type="password" name="pass">

         	<input type="submit" value="Login">
       </form> 
       </div>     
	</div>
</body>
</html>