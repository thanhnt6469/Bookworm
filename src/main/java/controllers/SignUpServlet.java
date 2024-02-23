package main.java.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.dao.ProductDAO;
import main.java.entity.AccountEntity;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/sign-up.jsp";
		String url1 = "/sign-in.jsp";
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String re_pass = request.getParameter("repass");
		
		if (user.isEmpty() || pass.isEmpty() || re_pass.isEmpty()) {
			request.setAttribute("passError", "<div class=\"alert alert-danger\" role=\"alert\">Error! Not be empty.</div>");
			request.getRequestDispatcher(url).forward(request, response);
		} else {
			if(!pass.equals(re_pass)) {
				request.setAttribute("passError", "<div class=\"alert alert-danger\" role=\"alert\">Error! Password and repeat password is not the same.</div>");
				request.getRequestDispatcher(url).forward(request, response);
			} else {
				ProductDAO productDAO = new ProductDAO();
				AccountEntity a = productDAO.checkAccountExist(user);
				if (a == null) {
					productDAO.signup(user, pass);
					request.setAttribute("userSuccess", "<div class=\"alert alert-success\" role=\"alert\">Sign up success.</div>");
					request.getRequestDispatcher(url1).forward(request, response);
				} else {
					request.setAttribute("userExist", "<div class=\"alert alert-danger\" role=\"alert\">Error! User already exists.</div>");
					request.getRequestDispatcher(url).forward(request, response);
				}
			}
		}
	}

}
