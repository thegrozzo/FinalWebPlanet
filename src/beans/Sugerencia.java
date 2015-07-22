package beans;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
 
@PersistenceCapable
public class Sugerencia{

	
	@Persistent
	String email;
	@Persistent
	String comentario;
	
	public Sugerencia( String correo, String comentario){
		super();
		this.email=correo;
		this.comentario=comentario;
	}
	public String getEmail(){
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment(){
		return comentario;
	}
	public void setComment(String comentario) {
		this.comentario = comentario;
	}
	@Override
	public String toString() {
		String resp = email + " : " + comentario ;  
		return resp;
	}
}