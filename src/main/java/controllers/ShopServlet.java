package main.java.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import main.java.dao.ProductDAO;
import main.java.entity.CategoryEntity;
import main.java.entity.ProductEntity;

import java.util.ArrayList;
import java.util.List;

@WebServlet("/shop")
public class ShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/shop.jsp";
		String indexPage = request.getParameter("index");
		String name = request.getParameter("sort");
		if (name == null) name = "Null";
		String equal = "title ASC";
		String equal1 = "none";
		boolean result = name.equals(equal);
		boolean result1 = name.equals(equal1);
		
		int index = 1;
		if (indexPage != null) index = Integer.parseInt(indexPage);
		System.out.println(name);
		
		ProductDAO productDAO = new ProductDAO();
		
		List<ProductEntity> products = null;
		if (result == true && result1 == false) {
			products = productDAO.pagingAllProductNameASC(index);
		} else if (result == false && result1 == true) {
			products = productDAO.pagingAllProduct(index);
		} else if (result1 == false) {
			products = productDAO.pagingAllProduct(index);
		}
		List<CategoryEntity> categories = productDAO.getAllCategory();
		//List<ProductEntity> pagingAllProduct = productDAO.pagingAllProduct(index);
		int totalProduct = productDAO.getAllProduct().size();
		int endPage = totalProduct / 15;
		if (totalProduct % 15 != 0) endPage++;

		request.setAttribute("tag", index);
		request.setAttribute("end", endPage);
		//request.setAttribute("productList", productsSort);
		request.setAttribute("productList", products);
		
		request.setAttribute("categoryList", categories);
		//request.setAttribute("allProductList", pagingAllProduct);
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

}