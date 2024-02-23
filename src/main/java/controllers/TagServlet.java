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


@WebServlet("/tag")
public class TagServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/shop.jsp";
		String categoryID = request.getParameter("cid");
		
		ProductDAO productDAO = new ProductDAO();
		List<ProductEntity> products = productDAO.getProductByCategory(categoryID);
		List<CategoryEntity> categories = productDAO.getAllCategory();
		
		request.setAttribute("productList", products);
		request.setAttribute("categoryList", categories);
		request.setAttribute("tagsCategory", categoryID);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
