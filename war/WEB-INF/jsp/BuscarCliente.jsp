<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<title>Buscar-Cliente</title>
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script>
function realizaProceso(valorCaja1){
	if( valorCaja1.trim().length==0){
		alert("¡Debe ingresar un numero de DNI!");
		$('#dni').focus();
		return false;
	}
	var parametros = {
		"dni" : valorCaja1
	};
	$.ajax({
    	data:  parametros,
		url:   '/buscar',
		type:  'get',
		beforeSend: function () {
			$("#resultado").html("Procesando, espere por favor...");
		},
		success:  function (response) {
			$("#resultado").html(response);
		}
	});
}
</script>
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
<h1>Buscar Cliente</h1>
			<form action="/buscar" method="get">
			<table>
			<tr>
  			<th><label>Ingrese DNI:</label></th>
  			<th><input type="text" name="dni" id="dni"></th>
  			<th><input type="button" onclick="realizaProceso($('#dni').val());return false;" value="Buscar"></th>
  			</tr>
  			</table>
			</form>
			
			<br>	
		<!-- Tag a actualizar  -->
		Resultado: <span id="resultado"></span>
	</div>
</body>
</html>