package mx.consultoria.juridica.especializada.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mx.consultoria.juridica.especializada.dto.RamoDTO;
import mx.consultoria.juridica.especializada.repository.RepositorioDao;

@Service
public class ServiceImpl implements ServiceInterface{

	@Autowired
	RepositorioDao dao;
	
	
	@Override
	public List<RamoDTO> listadoInformacion() {
		return dao.listadoInformacion();
	}

	@Override
	public void actualizarInformacion() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int eliminarInformacion(RamoDTO identificador) {
		return dao.eliminarInformacion(identificador);
	}

	@Override
	public int insertarInformacion(RamoDTO newInformacion) {
		return dao.insertarInformacion(newInformacion);
		
	}

}
