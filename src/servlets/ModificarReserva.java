package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import beans.*;

@SuppressWarnings("serial")
public class ModificarReserva extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		resp.setContentType("text/html;charset=UTF-8");
		HttpSession sesionA = req.getSession(true);
		final PersistenceManager pm = PMF.get().getPersistenceManager();
		final Query q = pm.newQuery(Pelicula.class);
		
		String us = (String)sesionA.getAttribute("usuario");
		String nombre = req.getParameter("pelicula");
		String dia = req.getParameter("dia");
		String hora = req.getParameter("horario");
		
		
		List<Reserva> res = (List<Reserva>) q.execute();
		
		for(int i=0;i<res.size();i++){
			if(us.equals(res.get(i).getUsuario())){
				res.get(i).setDia(dia);
				res.get(i).setHora(hora);
				break;
			}

	
		}
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/MenuU.jsp");
		rd.forward(req, resp);
		
		pm.close();
		q.closeAll();
	}
}

