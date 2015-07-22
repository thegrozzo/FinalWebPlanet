package beans;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
 
@PersistenceCapable
public class Usuarios {
	
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long key;
	
	@Persistent
	String user;
	@Persistent
	String pass;
	@Persistent
	String nombre;
	@Persistent
	String apellido;
	@Persistent
	String dni;
	@Persistent
	String email;
	@Persistent
	String fechanacimiento;
	@Persistent
	String sex;
	
	public Usuarios(String user, String pass, String name,String ap,String dni, String correo, String fnac, String sexo){
		super();
		this.user=user;
		this.pass=pass;
		this.nombre=name;
		this.apellido=ap;
		this.dni=dni;
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
	public String getDNI(){
		return dni;
	}
	public void setDNI(String dni){
		this.dni=dni;
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

	public String getKey(){
		return ""+key;
	}
	@Override
	public String toString() {
		String resp = nombre + " : " + apellido + " : " + email + " : " + fechanacimiento + " : " + sex;  
		return resp;
	}
}
