package mx.consultoria.juridica.especializada.repository;

import java.sql.Types;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import mx.consultoria.juridica.especializada.dto.RamoDTO;
import mx.consultoria.juridica.especializada.mapper.RamoMapper;

public class RepositorioImpl implements RepositorioDao{
	
	@Autowired
	private DataSource dataSource;  // ESTE TIENE LA CONEXI�N A BASE DE DATOS
	private JdbcTemplate jdbcTemplate=new JdbcTemplate();
	
	
	
	@Override
	public List<RamoDTO> listadoInformacion() {
		jdbcTemplate.setDataSource(dataSource);
		return jdbcTemplate.query("SELECT * FROM CATALOGO_RAMO", new RamoMapper<RamoDTO>());
	}
	@Override
	public void actualizarInformacion() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public int eliminarInformacion(RamoDTO identificador) {
		jdbcTemplate.setDataSource(dataSource);		         // Contiene la conexion a la DB
		Object [] idramo = {identificador.getIdRamo()};      // Se crea un areglo de tipo object
		int[] types = {Types.INTEGER}; 						// 
		return jdbcTemplate.update("delete from catalogo_ramo where id_ramo = ?",idramo,types); // Query
	}
	@Override
	public int insertarInformacion(RamoDTO newInformacion) {
		jdbcTemplate.setDataSource(dataSource);		         // Contiene la conexion a la DB
		return jdbcTemplate.update("INSERT INTO CATALOGO_RAMO(NOMBRE) VALUES(?)", newInformacion.getNombre());
	}
	public DataSource getDataSource() {
		return dataSource;
	}
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
