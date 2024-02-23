package main.java.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.dao.ProductDAO;
import main.java.entity.ProductEntity;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/index.jsp";
		
		
		ProductDAO productDAO = new ProductDAO();
		List<ProductEntity> newProduct = productDAO.getNewProduct();
		
		List<ProductEntity> categoryBiography = productDAO.getProductByCategory("8");
		List<ProductEntity> categoryAdventure = productDAO.getProductByCategory("2");
		List<ProductEntity> categoryChildren = productDAO.getProductByCategory("11");
		List<ProductEntity> categoryCookbooks = productDAO.getProductByCategory("1");
		List<ProductEntity> products = productDAO.getAllProduct();
		
		request.setAttribute("newProduct", newProduct);
		request.setAttribute("categoryBiography", categoryBiography);
		request.setAttribute("categoryAdventure", categoryAdventure);
		request.setAttribute("categoryChildren", categoryChildren);
		request.setAttribute("categoryCookbooks", categoryCookbooks);
		request.setAttribute("productList", products);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
