package beans;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
@PersistenceCapable
public class Reserva {
	
	@Persistent
	String usuario;
	@Persistent
	String dia;
	@Persistent
	String horario;

	
	public Reserva(String us, String dia, String hora){
		super();
		usuario=us;
		this.dia=dia;
		this.horario=hora;
	}

	public String getUsuario(){
		return usuario;
	}
	public void setUsuario(String user) {
		usuario=user;
	}
	public String getDia(){
		return dia;
	}
	public void setDia(String dia) {
		this.dia = dia;
	}
	public String getHora(){
		return horario;
	}
	public void setHora(String hora) {
		this.horario = hora;
	}

	@Override
	public String toString() {
		String resp = usuario + "  : " + dia + " : " + horario;  
		return resp;
	}
}
