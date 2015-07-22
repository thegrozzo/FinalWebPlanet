package beans;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
 
@PersistenceCapable
public class Usuariotra {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long key;
	
	
	@Persistent
	String user;
	@Persistent
	String pass;
	@Persistent
	String id;
	@Persistent
	String nombre;
	@Persistent
	String apellido;
	@Persistent
	String email;
	@Persistent
	String fechanacimiento;
	@Persistent
	String sex;
	
	
	public Usuariotra(String user, String pass, String id, String name,String ap, String correo, String fnac, String sexo){
		super();
		this.user=user;
		this.pass=pass;
		this.id=id;
		this.nombre=name;
		this.apellido=ap;
		this.email=correo;
		this.fechanacimiento=fnac;
		this.sex=sexo;
	}
	public String getUser(){
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass(){
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getID(){
		return id;
	}
	public void setID(String id){
		this.id=id;
	}
	public String getNombre(){
		return nombre;
	}
	public void setNombre(String name) {
		this.nombre = name;
	}
	public String getApellido(){
		return apellido;
	}
	public void setApellido(String lastname) {
		this.apellido = lastname;
	}
	public String getEmail(){
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFecNac(){
		return fechanacimiento;
	}
	public void setFecNac(String nac) {
		this.fechanacimiento = nac;
	}
	public String getSexo(){
		return sex;
	}
	public void setSexo(String sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		String resp = nombre + " : " + apellido + " : " + email + " : " + fechanacimiento + " : " + sex;  
		return resp;
	}
}

