package beans;
import java.util.*;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;


@PersistenceCapable
public class Pelicula {

	@Persistent
	String nombre;
	@Persistent
	String autor;
	@Persistent
	String idioma;
	@Persistent
	ArrayList<String> horarios = new ArrayList<String>();
	@Persistent
	ArrayList<Reserva> reservas = new ArrayList<Reserva>();

	public Pelicula(String nombre, String autor,String idioma) {
		super();
		this.nombre = nombre;
		this.autor = autor;
		this.idioma = idioma;
	}

	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}
	public String getIdioma(){
		return idioma;
	}
	
	public void setIdioma(String id){
		idioma=id;
	}

	public ArrayList<String> getHorarios() {
		return horarios;
	}

	public void setHorario(String horario) {
		horarios.add(horario);
	}
	
	public void delHorario(String s){
		int del = 0;
		String pos;
		for(int i=0;i<horarios.size();i++){
			if(s.equals(horarios.get(i))){
				del = i;
				break;
			}
		}
		pos=horarios.remove(del);
	}
	
	public void delReserva(String s){
		int del = 0;
		Object pos;
		for(int i=0;i<reservas.size();i++){
			if(s.equals(reservas.get(i).getUsuario())){
				del = i;
				break;
			}
		}
		pos =reservas.remove(del);
	}
	
	public ArrayList<Reserva> getReservas(){
		return reservas;
	}
	
	public void setReserva(Reserva reserva) {
		reservas.add(reserva);
	}
	@Override
	public String toString() {
		String resp = nombre + " : " + autor + " : " + horarios;
		return resp;
	}
	
}