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

@WebServlet("/add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String hot = request.getParameter("hot");
		String category = request.getParameter("category");
		
		HttpSession session = request.getSession();
		AccountEntity a = (AccountEntity) session.getAttribute("acc"); //session.getAttribute("acc"); -> tra ve 1 doan String -> ep String sang Object la AccountEntity -> a la 1 Object da luu tren session
		long sellID = a.getId();
		
		ProductDAO productDAO = new ProductDAO();
		productDAO.insertProduct(name, price, description, image, hot, category, sellID);
		response.sendRedirect("manager");
	}

}
