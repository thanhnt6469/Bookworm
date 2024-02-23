package main.java.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.dao.ProductDAO;
import main.java.entity.CategoryEntity;
import main.java.entity.ProductEntity;

@WebServlet("/detail")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/single-product.jsp";
		String id = request.getParameter("pid");
		
		ProductDAO productDAO = new ProductDAO();
		List<ProductEntity> products = productDAO.getProductByCategoryID(id);
		List<ProductEntity> productID = productDAO.getAllProduct();
		List<CategoryEntity> categories = productDAO.getAllCategory();
		ProductEntity p = productDAO.getProductByID(id);
		
		request.setAttribute("productList", products);
		request.setAttribute("productAllList", productID);
		request.setAttribute("detail", p);
		request.setAttribute("categoryList", categories);
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
