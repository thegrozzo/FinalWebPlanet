package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class ControlJSP extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String v=""+req.getParameter("v");
		if(v.equals("1")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/AnularReseva.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("2")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/BuscarCliente.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("3")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/cartelera.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("4")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/ListaReservas.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("5")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/listaSugerencias.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("6")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/ListaTrabajadores.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("7")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/listaUsuarios.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("8")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/loginA.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("9")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/LoginU.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("10")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/MenuA.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("11")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/MenuU.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("12")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/mision.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("13")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/Registro.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("14")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/RegistroTrabajador.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("15")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/reservas.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("16")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/sugerencias.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("17")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/BuscarTrabajador.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("18")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/EliminarTrabajador.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("19")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/EliminarCliente.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("20")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/AdministrarCartelera.jsp");
			rd.forward(req, resp);
		}
		if(v.equals("21")){
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/jsp/ModificarReserva.jsp");
			rd.forward(req, resp);
		}
	}
}
