package servlets;

import java.io.IOException;
import java.util.*;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.jdo.Query;
import beans.Usuariotra;


@SuppressWarnings("serial")
public class LoginAdm extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/plain");


		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Usuariotra.class);

		HttpSession sesionA = req.getSession(true);
		
		String usuario = req.getParameter("user");
		String password = req.getParameter("pass");
		//q.setOrdering("key ascending");
		q.setOrdering("key descending");
		q.setRange(0, 10);
		q.setFilter("user == colorParam");
		q.declareParameters("String colorParam");
		
		@SuppressWarnings("unchecked")
		List<Usuariotra> personas = (List<Usuariotra>) q.execute(usuario);
		
		if(personas.size()==0)
			//usuario no existe
			resp.sendRedirect("controljsp?v=8");
		else if(personas.size()!=0 && usuario.equals(personas.get(0).getUser()) && password.equals(personas.get(0).getPass()) && sesionA.getAttribute("usuario") == null){
			//usuario y contrase�a existen ademas de sesion no iniciada
			sesionA.setAttribute("usuario", usuario);
			
			RequestDispatcher rd=req.getRequestDispatcher("WEB-INF/jsp/MenuA.jsp");
			rd.include(req, resp);
			resp.sendRedirect("controljsp?v=10");
		}
		else if(personas.size()!=0 && usuario.equals(personas.get(0).getUser()) && password != personas.get(0).getPass()){
			//usuario correcto pero contrase�a incorrecta
			

		resp.sendRedirect("controljsp?v=8");
		}
		
		q.closeAll();
		pm.close();
	}

}



