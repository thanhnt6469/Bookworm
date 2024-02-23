package main.java.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.java.dao.ProductDAO;
import main.java.entity.AccountEntity;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/sign-in.jsp";
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		
		ProductDAO productDAO = new ProductDAO();
		AccountEntity a = productDAO.login(username, password);
		
		if (a == null) {
			request.setAttribute("messError", "<div class=\"alert alert-danger\" role=\"alert\">Wrong user or password!</div>");
			request.getRequestDispatcher(url).forward(request, response);
			
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("acc", a);
			response.sendRedirect("home"); //Khong can mang theo du lieu, chi can chuyen trang toi home
		}
	}


}
