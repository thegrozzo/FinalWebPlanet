package servlets;
import java.io.IOException;
import java.util.*;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
import javax.jdo.Query;
import beans.Usuarios;

@SuppressWarnings("serial")
public class BuscarCliente extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Usuarios.class);
		
		String dni = req.getParameter("dni");
		
		q.setOrdering("key descending");
		q.setRange(0, 10);
		q.setFilter("dni == colorParam");
		q.declareParameters("String colorParam");
		
		@SuppressWarnings("unchecked")
		List<Usuarios> personas = (List<Usuarios>) q.execute(dni);
		
		if(personas.size()==0){
			resp.setContentType("text/html");
			resp.getWriter().print("No se encontro cliente");
		}
		else{
			resp.setContentType("text/html");
			resp.getWriter().print("<br><br><table  border='1'  bgcolor='white'><tbody>"
					+ "<tr><th>DNI:</th><th>"+personas.get(0).getDNI()+"</th></tr>"
					+ "<tr><th>NOMBRES:</th><th>"+personas.get(0).getNombre()+"</th></tr>"
					+ "<tr><th>APELLIDOS:</th><th>"+personas.get(0).getApellido()+"</th></tr>"
					+ "<tr><th>USERNAME:</th><th>"+personas.get(0).getUser()+"</th></tr>"
					+ "<tr><th>EMAIL:</th><th>"+personas.get(0).getEmail()+"</th></tr>"
					+ "<tr><th>F.NACIMIENTO:</th><th>"+personas.get(0).getFecNac()+"</th></tr>"
							+ "</tbody></table>");
		}
		

		q.closeAll();
		pm.close();
	}
}
