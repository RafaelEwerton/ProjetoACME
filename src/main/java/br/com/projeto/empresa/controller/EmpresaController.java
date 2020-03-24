package br.com.projeto.empresa.controller;

import java.io.IOException;

import javax.security.sasl.SaslException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmpresaController")
public class EmpresaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	public EmpresaController() {
	}

	// Servlet
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws SaslException, IOException, ServletException {
		
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		if(email.equals("rafael@gmail.com") && senha.equals("123")) {
			request.setAttribute("email",email);
			request.setAttribute("senha",senha);
			
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
		}else {
			request.setAttribute("mensagem", "Login ou senha incorreto!");
			response.sendRedirect("login.jsp");
			
			
		}
	}

}
