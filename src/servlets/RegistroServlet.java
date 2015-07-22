package servlets;

import java.io.IOException;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import beans.Usuarios;

@SuppressWarnings("serial")
public class RegistroServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String user = req.getParameter("user");
		String pass = req.getParameter("pass");
		String name = req.getParameter("nombre");
		String lastname = req.getParameter("apellido");
		String dni = req.getParameter("dni");
		String email = req.getParameter("email");
		String sexo = req.getParameter("listaSexo");
		String dia = req.getParameter("day");
		String mes = req.getParameter("month");
		String año = req.getParameter("year");
		String fecha = dia +"/" + mes + "/" +año ;
		
		Usuarios p = new Usuarios(user, pass, name, lastname,dni, email, fecha, sexo );
		if(name.equals("") || lastname.equals("") || dni.equals("") || sexo.equals("") || user.equals("") || pass.equals("") || email.equals("")){
			resp.getWriter().println("Faltan ingresar datos.");
			resp.getWriter().println("<a href='controljsp?v=13'>Volver a intentar</a>");
		}else{
		
			PersistenceManager pm = PMF.get().getPersistenceManager();
			try{
				pm.makePersistent(p);
				resp.getWriter().println("Datos grabados correctamente");
				
			}catch(Exception e){
				System.out.println(e);
				resp.getWriter().println("Ocurrio un error, <a href='controljsp?v=13'>vuelva a intentarlo</a> " + e);
			}finally{
				pm.close();
			}
		}
	}
}