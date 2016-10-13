package ar.edu.grupoesfera.cursospring.modelo;

public class Jugador implements Comparable<Jugador>{
	
	public String nombre;
	public String apellido;
	public Integer documento;
	//atibutos  temporales
	//Disponibilidad
	public Integer cantidadDeAmarrilas;
	public Integer cantidadDeRojas;
	public Boolean estaHabilitadoParaJugar=true;//por 6 amarrilas o 1 roja 1 fecha de suspension
	//cantidad de goles
	public Integer cantidadDeGoles=0;
	
	public Jugador(String nombre,String apellido,Integer documento)
	{
		this.nombre=nombre;
		this.apellido=apellido;
		this.documento=documento;
		this.cantidadDeAmarrilas=0;
		this.cantidadDeRojas=0;
		this.estaHabilitadoParaJugar=true;
	}
	

	
	//compare
	
	@Override
	public int compareTo(Jugador o) {
		// TODO Auto-generated method stub
		//return this.documento.compareTo(o.documento);
		return this.nombre.compareTo(o.nombre);
		
	}
	//hash code and eaculs por doc

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((documento == null) ? 0 : documento.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Jugador other = (Jugador) obj;
		if (documento == null) {
			if (other.documento != null)
				return false;
		} else if (!documento.equals(other.documento))
			return false;
		return true;
	}
	
	//geters and setters

	public String getNombre() {
		return nombre;
	}




	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Integer getDocumento() {
		return documento;
	}

	public void setDocumento(Integer documento) {
		this.documento = documento;
	}

	public Integer getCantidadDeAmarrilas() {
		return cantidadDeAmarrilas;
	}

	public void setCantidadDeAmarrilas(Integer cantidadDeAmarrilas) {
		this.cantidadDeAmarrilas = cantidadDeAmarrilas;
	}

	public Integer getCantidadDeRojas() {
		return cantidadDeRojas;
	}

	public void setCantidadDeRojas(Integer cantidadDeRojas) {
		this.cantidadDeRojas = cantidadDeRojas;
	}

	public Boolean getEstaHabilitadoParaJugar() {
		return estaHabilitadoParaJugar;
	}

	public void setEstaHabilitadoParaJugar(Boolean estaHabilitadoParaJugar) {
		this.estaHabilitadoParaJugar = estaHabilitadoParaJugar;
	}

	public Integer getCantidadDeGoles() {
		return cantidadDeGoles;
	}

	public void setCantidadDeGoles(Integer cantidadDeGoles) {
		this.cantidadDeGoles = cantidadDeGoles;
	}
}
