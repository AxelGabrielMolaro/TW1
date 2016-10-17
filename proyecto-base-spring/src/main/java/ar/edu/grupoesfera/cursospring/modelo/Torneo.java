package ar.edu.grupoesfera.cursospring.modelo;

import java.util.HashSet;
import java.util.TreeMap;

public class Torneo {

		private String nombre;
		private HashSet<Equipo> listaDeEquipos=new HashSet<Equipo>();
		
		
		public Torneo(String nombre)
		{
			this.nombre=nombre;
		}
		
		//getter an seters
		
		public String getNombre() {
			return nombre;
		}
		public void setNombre(String nombre) {
			this.nombre = nombre;
		}
		public HashSet<Equipo> getListaDeEquipos() {
			return listaDeEquipos;
		}
		public void setListaDeEquipos(HashSet<Equipo> listaDeEquipos) {
			this.listaDeEquipos = listaDeEquipos;
		}
		
		
}
