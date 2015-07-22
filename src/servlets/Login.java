package servlets;

import java.io.IOException;
import java.util.*;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.jdo.Query;

import beans.Usuarios;

@SuppressWarnings("serial")
public class Login extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException{
		resp.setContentType("text/plain");


		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Usuarios.class);

		HttpSession sesion = req.getSession(true);
		
		String usuario = req.getParameter("user");
		String password = req.getParameter("pass");
		//q.setOrdering("key ascending");
		q.setOrdering("key descending");
		q.setRange(0, 10);
		q.setFilter("user == colorParam");
		q.declareParameters("String colorParam");
		
		@SuppressWarnings("unchecked")
		List<Usuarios> personas = (List<Usuarios>) q.execute(usuario);
		
		if(personas.size()==0){
			//usuario no existe
			resp.setContentType("text/html");
			resp.getWriter().println("Usario no Existe");
			resp.getWriter().println("<a href='index.jsp'>Volver a intentar</a>");
		}
		else if(personas.size()!=0 && usuario.equals(personas.get(0).getUser()) && password.equals(personas.get(0).getPass()) && sesion.getAttribute("usuario") == null){
			//usuario y contraseï¿½a existen ademas de sesion no iniciada
			sesion.setAttribute("usuario", usuario);
			RequestDispatcher rd = req.getRequestDispatcher("controljsp?v=11");
			rd.forward(req, resp);
		}
		else if(personas.size()!=0 && usuario.equals(personas.get(0).getUser()) && password != personas.get(0).getPass()){
			//usuario correcto pero contraseï¿½a incorrecta
			resp.setContentType("text/html");
			resp.getWriter().println("Contraseña invalida.");
			resp.getWriter().println("<a href='index.jsp'>Volver a intentar</a>");
		}
		
		q.closeAll();
		pm.close();
	}
	
}

			
		
			


	

