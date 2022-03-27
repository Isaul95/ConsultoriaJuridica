
$(document).ready(function(){ // Esta parte es para realizar la carga de la pagina *DESDE EL INICIO*
		
	llenarTablaRamoJuzgado(); // Llamamos la function de llenar tabla al inicio de cargar la pagina
	dataTable();
	
     // Al precionar el Boton "Agregar Nuevo Ramo" x medio se javascrip abriremos el modal
	 $('#btn_AbrirModalRamo').click(function () {
	    	$('#ventanaModalRamo').modal('show'); // <-- Este -> ventanaModalRamo es el Ide del modal Ramo le estamos diciendo cuando damos click en el boton de la vista ->"Agregar Nuevo Ramo" con el -> .modal-show va a mostrarnos el modal
	    	$('#nombre_ramo').val("");     // Cuando nos muestre/presente el modal para agregar new ramo nos va limpar el campo de texto
	   });
	
});  // Termina  - $(document).ready





//3
// Se consulta la lista de ramos
function llenarTablaRamoJuzgado(){
	var table = $('#tbl_ramos').DataTable();
	table.destroy(); // Destruir la informacion
	$.ajax({
		type: "get",
		url: '/ConsultoriaJuridica/ObtenerDatosRamo',
		dataType: "json",
		success: function(response){  // response =  listadeRamos
			$("#tbl_ramos").DataTable({
				data: response,
				resposive: true,
				columns:[					
					{
						data: "idRamo",
						"searchable" : false,
						"visible": false,						
					},
					{
						data: "nombre",
					},
					{
						className: "text-center",
						data: function(row, type, set){
							var a;
							a = `<a href="#" id="eliminar_ramo" class="btn btn-danger btn-remove" value="${row.idRamo}"><i class="fa fa-trash"></i></a>`;
							
							return a;
						}						
					},
					{
						className: "text-center",
						data: function(row, type, set){			// fa-2x
							var a;
							a = `<a href="#" id="editar_ramo" class="btn btn-success" value="${row.idRamo}"><i class="fa fa-edit"></i></a>`;
							
							return a;
						}						
					}
					]
					 
				});
			},					
		});
}



// Al momento de dar click sobre el icono se ejecuta esta funcion para ejecitar la peticion y se elimne el registro.

$(document).on("click","#eliminar_ramo",function(e){
	e.preventDefault();
	var idTraidoDesdeElBotonEliminar = $(this).attr("value"); // Asignado el id a la variable -> idTraidoDesdeElBotonEliminar 
	$.ajax({												 // Todo esto contiene el valor del id desde la tabla -> $(this).attr("value");
		type: "post",
		url: "/ConsultoriaJuridica/EliminarCatRamo",
		data: {
			idRamo: idTraidoDesdeElBotonEliminar,  //idRamo -> el valor de la izq hace referencia a mi modelo o clase RamoDTO *DEBE ESTAR TAL CUAL
		}, 				    
		dataType: "json",
		success: function(respuestadelcontrolador){
			if (respuestadelcontrolador==1){  // En caso de que si se elimino el registro (CONDICION)
				alert("El catalogo de Ramo, fue eliminado un registro.!"); // Mensaje a mostrar
				llenarTablaRamoJuzgado();  // Aki se llama la funcion para poder recargar nuevamente los registros nuevos o los que se hayan eliminado
				
			}
			else{
				alert("No se pudo eliminar el registro.!");
			}
		}
	});

});




// function para insertar informacion ala base de datos

$(document).on("click","#boton_guardarRamo",function(e){
	e.preventDefault();
	var nameRamoSeExtraeDesdeCajaDeTexto = $('#nombre_ramo').val(); // Asi estamos recojiendo informacion de la ACAJA DE TEXTO DESDE LA VISTA
//	var nombre = $('#nombre').val();
//	var sexo = $('#sexo').val();
//	var edad = $('#edad').val();
//	var telefono = $('#telefono').val();
	$.ajax({
		type: "post",
		url: "/ConsultoriaJuridica/AgregarNewRamo",
		data: {
			nombre: nameRamoSeExtraeDesdeCajaDeTexto,
//			nombre : nombre,
//			sexo : sexo,
//			edad: edad,
//			telefono : telefono,
		},
		dataType: "json",
		success: function(respuestadelcontrolador){
			if (respuestadelcontrolador==1){
				alert("Nuevo ramo agregado...");
				$('#nombre_ramo').val("");           // Una vez que se inserto registro en la DB el campo de texto lo va a limpiar, esto para que cuando volvamos a abrir el modal ya no tenga informacion anterior
				$("#ventanaModalRamo").modal("hide");  // Una vez que se inserto registro en la DB se oculta el modal para que nos muestre la tabla.
				llenarTablaRamoJuzgado();	         // Una vez que se inserto registro en la DB se manda a llamar la function de llenar tabla para que refresque la tabla y aparesca el registro nuevo.			
			}
			else{alert("Ramo no agregado.!");}
		}
});

});









// Para pruebas
function dataTable(){
	var table = $('#dataTable3').DataTable();
}
