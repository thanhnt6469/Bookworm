package main.java.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.java.dao.ProductDAO;
import main.java.entity.AccountEntity;
import main.java.entity.CategoryEntity;
import main.java.entity.ProductEntity;

@WebServlet("/managerProduct")
public class ManagerProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/ManagerProduct.jsp";
		String indexPage = request.getParameter("index");
		int index = 1;
		if (indexPage != null) index = Integer.parseInt(indexPage);
		
		HttpSession session = request.getSession();
		AccountEntity a = (AccountEntity) session.getAttribute("acc"); //session.getAttribute("acc"); -> tra ve 1 doan String -> ep String sang Object la AccountEntity -> a la 1 Object da luu tren session
		long id = a.getId();
		ProductDAO productDAO = new ProductDAO(); 
		List<ProductEntity> products = productDAO.getProductBySellID(id);
		List<CategoryEntity> categories = productDAO.getAllCategory();
		List<ProductEntity> productPaging = productDAO.pagingBySellID(id,index);
		int totalProduct = productDAO.getProductBySellID(id).size();
		int endPage = totalProduct / 4;
		if (totalProduct % 4 != 0) endPage++;
		
		request.setAttribute("tag", index);
		request.setAttribute("end", endPage);
		request.setAttribute("categoryList", categories);
		request.setAttribute("productList", products);
		request.setAttribute("productPage", productPaging);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
