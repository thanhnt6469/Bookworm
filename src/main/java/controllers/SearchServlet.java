package main.java.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.dao.ProductDAO;
import main.java.entity.CategoryEntity;
import main.java.entity.ProductEntity;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "shop.jsp";
		String txtSearch = request.getParameter("txt");
		
		ProductDAO productDAO = new ProductDAO();
		List<ProductEntity> products = productDAO.searchByName(txtSearch);
		List<CategoryEntity> categories = productDAO.getAllCategory();
		request.setAttribute("categoryList", categories);
		request.setAttribute("productList", products);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
