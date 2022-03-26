<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<!-- LIGAS PARA FUNCIONALIDAD DE LOS DataTanbles  -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script type="text/javascript" lenguaje="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" lenguaje="javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>





<script lenguaje="JavaScript" type="text/javascript"
	src="<c:url value="/resources/javascript/jquery-3.2.1.js" />"></script>
<script lenguaje="JavaScript" type="text/javascript"
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script lenguaje="JavaScript" type="text/javascript"
    src="<c:url value="/resources/javascript/ramoJusgado.js"/>"></script>
    	
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>PROYECTO</title>


<!--  	OTROSSS    -->
<link rel="shortcut icon" type="<%=request.getContextPath()%>/resources/Icons/resources_app/favicon.png/favicon.png">
    <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/resources/assets/css/metisMenu.css">
    <link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/assets/css/slicknav.min.css">
    <!-- amcharts css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="/resources/assets/css/typography.css">
    <link rel="stylesheet" href="/resources/assets/css/default-css.css">
    <link rel="stylesheet" href="/resources/assets/css/styles.css">
    <link rel="stylesheet" href="/resources/assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="/resources/assets/js/vendor/modernizr-2.8.3.min.js"></script>




</head>

<body>

<!-- page container area start  INICIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ENGLOBA TODO-->
<div class="page-container">

  <!-- sidebar menu area start -->
            <div class="sidebar-menu">
                <div class="sidebar-header">
                    <div class="logo">
                        <a href="index"><img src="<%=request.getContextPath()%>/resources/assets/images/icon/logo.png" alt="logo"></a>
                    </div>
                    <br>
                    <%-- <h6 class="text-center" style="color: aliceblue"><i class="fa fa-user"></i> <strong><%out.print(((com.jcode.myapp.model.session.Usuario) request.getSession().getAttribute("usuario")).getName_user());%></strong></h6> --%>
				<h6 class="text-center" style="color: aliceblue">
					<i class="fa fa-user"></i> 
					<strong> 
					Isaul
					</strong>
				</h6>
			</div>
                <jsp:include page="menu.jsp"/>
            </div>
            <!-- sidebar menu area end -->



<div width="50%">
<!-- La tabla para listar informacion  -->
	<table class="table" id="tbl_ramos" 
	>
	<thead>
	
	<tr>
	<th scope="col"></th>
	<th scope="col">NOMBRE</th>
	<th scope="col">ELIMINAR</th>
	</tr>
	</thead>
	
	</table>
</div>

<br><br>


<!-- Button que se presenta en el body del html -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  Agregar Nuevo Ramo
</button>

<br><br>



<!--------------------------- INICIA Modal para registrar el nueo ramo ------------------------------------------>

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel"> Agregar catalogo de ramos</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="contenido">
      <label for="">Nuevo ramo:</label>
        <input type="text" class="form-control" id="id_ramo" placeholder="Agregar nuevo ramo...">
<!--  <label for="">Nombre:</label>
        <input type="text" class="form-control" id="nombre" placeholder="Nombre del alumno">
        <label for="">Sexo:</label>
        <input type="text" class="form-control" id="sexo" placeholder="Masculino o Femenino">
        <label for="">Edad:</label>
        <input type="text" class="form-control" id="edad" placeholder="Edad del alumno">
        <label for="">Telefono:</label>
        <input type="text" class="form-control" id="telefono" placeholder="Numero del alumno">       -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="boton_guardarRamo" onclick="click" >Guardar cambios</button>
      </div>
    </div>
  </div>
</div>
<!--------------------------Ternina modal de ramo------------------------------------------------->






<!-- Modal 2-->
<div class="modal" tabindex="-1" role="dialog" id="modalactualizaralumno">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Actualizar alumno</h5>
				</div>
				<input type="hidden" id="idalumno_actualizar">
					<div class="modal-body">
                  <label for="">Apellido: </label>
                  <input type="text" class="form-control" id="apellido_actualizar" placeholder="Apellido del alumno">
						<br>
						<label for="">Nombre: </label>
                  <input type="text" class="form-control" id="nombre_actualizar" placeholder="Nombre del alumno"/>
						<br>
						<label for="">sexo: </label>
                  <input type="text" class="form-control" id="sexo_actualizar" placeholder="Sexo del alumno"/>
                        <br>
                  <label for="">Edad: </label>
                  <input type="text" class="form-control" id="edad_actualizar" placeholder="Edad  del alumno"/>
						<br>
						<label for="">Telefono: </label>
                  <input type="text" class="form-control" id="telefono_actualizar" placeholder="Telefono del alumno"/>
						<br>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal" id="Boton_cerrar"
							onclick="document.getElementById('modalactualizaralumno').style.display='none'">Cerrar</button>
						<button type="submit" class="btn btn-primary" id="Botactualizar" onclick="document.getElementById('modalactualizaralumno').style.display='none'">Actualizar alumno</button>
					</div>
			</div>
		</div>
	</div>
	
	
	
	
</div>
<!-- page container area end  TERMINAAAAAAAAAAAAAAAAAA englobar todoooooooooooooooo-->



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>
