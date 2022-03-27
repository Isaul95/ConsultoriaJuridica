<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script> -->
	 <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script> -->

<script lenguaje="JavaScript" type="text/javascript" src="<c:url value="/resources/javascript/jquery-3.2.1.js" />"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- LIGAS PARA FUNCIONALIDAD DE LOS DataTanbles  -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script type="text/javascript" lenguaje="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" lenguaje="javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>


<!-- LIGAS PARA FUNCIONALIDAD DE LOS DataTanbles  -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script type="text/javascript" lenguaje="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" lenguaje="javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
 
  <script lenguaje="JavaScript" type="text/javascript" src="<c:url value="/resources/javascript/jquery-3.2.1.js" />"></script>
<script lenguaje="JavaScript" type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script lenguaje="JavaScript" type="text/javascript" src="<c:url value="/resources/javascript/ramoJusgado.js"/>"></script> --%>
    	
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>PROYECTO</title>
-->

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>MyApp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="<%=request.getContextPath()%>/resources/Icons/resources_app/favicon.png">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/bootstrap.min.css"/>"type="text/css"><link>                  
 	<link rel="stylesheet" href="<c:url value="/resources/assets/css/font-awesome.min.css"/>"type="text/css"><link>                      
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/themify-icons.css"/>"type="text/css"><link>    
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/metisMenu.css"/>"type="text/css"><link>   
    <!-- others css -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/typography.css"/>"type="text/css"><link>
	<link rel="stylesheet" href="<c:url value="/resources/assets/css/default-css.css"/>"type="text/css"><link>
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>"type="text/css"><link>
	<link rel="stylesheet" href="<c:url value="/resources/assets/css/responsive.css"/>"type="text/css"><link>	
	<link rel="stylesheet" href="<c:url value="/resources/view/sweetalert.css"/>"type="text/css"><link>
	<%-- <link rel="stylesheet" href="<c:url value="/resources/view/estilos.css"/>"type="text/css"><link> --%>

	<!-- modernizr css -->
    <script src="<c:url value="/resources/assets/js/vendor/modernizr-2.8.3.min.js"/>"></script>    
    
    <script lenguaje="JavaScript" type="text/javascript" 
    src="<c:url value="/resources/javascript/viewPrubas.js"/>"></script>
</head>


<body>

<!-- page container area start  INICIAA-->
       <div class="page-container">
       
       
<!--  =====================    MENU LATERAL IZQ COLOR NEGRO     =================  -->
<!-- sidebar menu area start / Aki no toquen nada, solo copien tal cual el codigo y se lo lleven a su nueva vista-->
            <div class="sidebar-menu">
                <div class="sidebar-header">
                    <div class="logo">
                        <a href="index"><img src="<%=request.getContextPath()%>/resources/assets/images/icon/logo.png" alt="logo"></a>
                    </div>
                    <br>
                   <%--  <h6 class="text-center" style="color: aliceblue"><i class="fa fa-user"></i> <strong><%out.print(((com.jcode.myapp.model.session.Usuario) request.getSession().getAttribute("usuario")).getName_user());%></strong></h6> --%>
                    <h6 class="text-center" style="color: aliceblue">
					<i class="fa fa-user"></i> 
					<strong> 
					Isaul
					</strong>
				</h6>
                </div>
                <jsp:include page="menu.jsp"/>
            </div>
<!-- sidebar menu area end Aki TERMINA el sidebar-menu es el menu lateral izq de color negro*********************-->
            
            
<!--  AKI INICIA EL CUERPO (la parte blanca de la vista) DONDE VAN LOS COMPONENTES ******************************************* -->  
<!-- main content area start -->
<div class="main-content">
                        
            
<!-- header area start / NO SE TOCA NADA AKI - INICIA ENCABEZADO LA PARTE SUPERIOR DONDE ESTA -> Cerras Session **** -->
                <div class="header-area">
                    <div class="row align-items-center">
                        <!-- nav and search button -->
                        <div class="col-4 clearfix">
                            <div class="nav-btn pull-left" style="margin-top: 0px">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                        <!-- profile info & task notification -->
                        <div class="col-8 clearfix">
                            <ul class="notification-area pull-right">
                                <li>
                                    <a href="cerrarsession">
                                        Cerrar Sessión
                                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
<!-- header area end TERMINA ENCABEZADO LA PARTE SUPERIOR DONDE ESTA -> Cerras Session ************* -->
                
                
 <!-- AKI INICIA EL CONTENEDOR DE LOS COMPONENTES  -->                
                <div class="main-content-inner" style="padding-top: 30px">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Emcabezado</h5>
                                    <input type="hidden" id="nameFormCategoria" value="FrmCategoria">
                                    <input type="hidden" id="actionCategoria" name="action" value="paginarCategoria">
                                    <input type="hidden" id="numberPageCategoria" name="numberPageCategoria" value="1">
                                    <form id="FrmCategoria">
                                        <div class="row mt-3">
                                            <div class="form-group col-md-9 col-12">
                                                <input type="text" name="txtNombreCategoria" id="txtNombreCategoria" class="form-control form-control-sm" placeholder="Input text prueba">
                                            </div>
                                            <div class="form-group col-md-3 col-12">
                                                <button type="submit" id="btnBuscarCategoria" class="btn btn-primary btn-xs mr-3" data-toggle="tooltip" title="Buscar Categoria"><i class="fa fa-search" aria-hidden="true"></i> BUSCAR</button>
                                                <button type="button" id=btn_AbrirNuevoDato class="btn btn-primary btn-xs" data-toggle="tooltip" title="Agregar Categoria"><i class="fa fa-plus-square" aria-hidden="true"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-bordered">
                                                    <thead class="bg-dark">
                                                        <tr class="text-white">
                                                            <th>NOMBRE- columna table</th>
                                                            <th style="width: 15%" colspan="2" class="text-medium-table">ACCIONES</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbodyCategoria">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card"
                                                 style="height: 50px; margin-bottom: 0px">
                                                <div class="card-body" style="padding-top: 10px; padding-bottom: 10px; padding-left: 0px; padding-right: 0px">
                                                    <div class="row">
                                                        <div class="col-md-2 col-sm-3 col-4">
                                                            <select id="sizePageCategoria" name="sizePageCategoria" class="form-control form-control-sm combo-paginar" idBtnBuscar='btnBuscarCategoria'>
                                                                <option value="10">10</option>
                                                                <option value="15">15</option>
                                                                <option value="20">20</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-10 col-sm-9 col-8">
                                                            <nav aria-label="Page navigation example">
                                                                <ul id="paginationCategoria" class="pagination pagination-sm justify-content-end">

                                                                </ul>
                                                            </nav>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  <!-- AKI TERMINA EL CONTENEDOR DE LOS COMPONENTES  -->
            </div>
<!--  AKI TERMINA EL CUERPO (la parte blanca de la vista) DONDE VAN LOS COMPONENTES******************************************* -->          
            
            
            
            
            
            
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
            
            
            
        
            <div id="ventanaModalManCategoria" class="modal" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form id="FrmCategoriaModal">
                            <div class="modal-header">
                                <h6 class="modal-title" id="tituloModalManCategoria"></h6>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="txtNombreCategoriaER">NOMBRE</label>
                                        <input type="text" id="txtNombreCategoriaER" name="txtNombreCategoriaER" class="form-control form-control-sm" placeholder="NOMBRE">
                                        <div class="error-validation" id="validarNombreCategoriaER">Ingrese Categoria</div>
                                    </div>
                                </div>
                                <input type="hidden" id="txtIdCategoriaER" name="txtIdCategoriaER" value="">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary btn-xs" data-dismiss="modal">CERRAR</button>
                                <button type="submit" class="btn btn-primary btn-xs">GUARDAR</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            
            

            <div class="modal" id="modalCargandoCategoria" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" style="padding-top: 18%; overflow-y: visible;">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="progress" style="margin-bottom: 0px;">
                                <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                    Cargando...
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- main content area end -->
            <!-- footer area start-->
            <jsp:include page="footer.jsp"/>
            <!-- footer area end-->
        </div>
<!-- page container area end  TERMINAAAAAAAAAAAAAAAAAA o-->



<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
 -->
 
  <!-- jquery latest version -->
<%-- <script lenguaje="JavaScript" type="text/javascript" src="<c:url value="/resources/assets/js/vendor/jquery-2.2.4.min.js"/>"></script> --%>

    <!-- bootstrap 4 js -->
    <script src="<c:url value="/resources/assets/js/popper.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/bootstrap.min.js"/>"></script>

    <script src="<c:url value="/resources/assets/js/metisMenu.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/jquery.slimscroll.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/jquery.slicknav.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/scripts.js"/>"></script>
    
    <script src="<c:url value="/resources/js_app/app/utilities/lib-utilities.js"/>"></script>
    
    <script src="<c:url value="/resources/js_app/view/jquery.Pagination.min.js"/>"></script>
    <script src="<c:url value="/resources/js_app/view/sweetalert.min.js"/>"></script>
    <%-- <script src="<c:url value="/resources/js_app/app/categoria.js"/>"></script> --%>
 
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
 
</body>
</html>
