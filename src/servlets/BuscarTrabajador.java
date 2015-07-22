package servlets;
import java.io.IOException;
import java.util.*;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
import javax.jdo.Query;
import beans.*;

@SuppressWarnings("serial")
public class BuscarTrabajador extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Usuariotra.class);
		
		String id = req.getParameter("id");
		
		q.setOrdering("key descending");
		q.setRange(0, 10);
		q.setFilter("id == colorParam");
		q.declareParameters("String colorParam");
		
		@SuppressWarnings("unchecked")
		List<Usuariotra> admins = (List<Usuariotra>) q.execute(id);
		
		if(admins.size()==0){
			resp.setContentType("text/html");
			resp.getWriter().print("No se encontro trabajador.");
		}
		else{
			resp.setContentType("text/html");
			resp.getWriter().print("<br><br><table  border='1'  bgcolor='white'><tbody>"
					+ "<tr><th>CODIGO:</th><th>"+admins.get(0).getID()+"</th></tr>"
					+ "<tr><th>NOMBRES:</th><th>"+admins.get(0).getNombre()+"</th></tr>"
					+ "<tr><th>APELLIDOS:</th><th>"+admins.get(0).getApellido()+"</th></tr>"
					+ "<tr><th>USERNAME:</th><th>"+admins.get(0).getUser()+"</th></tr>"
					+ "<tr><th>EMAIL:</th><th>"+admins.get(0).getEmail()+"</th></tr>"
							+ "</tbody></table>");
		}
		

		q.closeAll();
		pm.close();
	}
}



