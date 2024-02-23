package main.java.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.java.dao.ProductDAO;
import main.java.entity.ItemEntity;
import main.java.entity.OrderEntity;
import main.java.entity.ProductEntity;

@WebServlet("/addtoCart")
public class AddtoCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int quantity = 1;
		int id;
		System.out.println("addCart");
		if (request.getParameter("bookId")!= null) {
			id = Integer.parseInt(request.getParameter("bookId"));
			
			ProductDAO productDAO = new ProductDAO();
			ProductEntity book = productDAO.getProductById(id);
			if (book != null) {
				if (request.getParameter("quantity") != null) {
					quantity = Integer.parseInt(request.getParameter("quantity"));
				}
				HttpSession session = request.getSession();
				// chua them san pham vao gio hang
				if (session.getAttribute("order") == null) {
					OrderEntity order = new OrderEntity();
					List<ItemEntity> listItems = new ArrayList<ItemEntity>();
					
					ItemEntity item = new ItemEntity();
					item.setQuantity(quantity);
					item.setBook(book);
					item.setPrice(book.getPrice());
					listItems.add(item);
					order.setItems(listItems);
					session.setAttribute("size", listItems.size());
					session.setAttribute("order", order);
				} else { // them san pham vao gio hang
					OrderEntity order = (OrderEntity) session.getAttribute("order");
					List<ItemEntity> listItems = order.getItems();
					boolean check = false;
					for (ItemEntity item : listItems) {
						if (item.getBook().getId() == book.getId()) {
							item.setQuantity(item.getQuantity()+quantity); // da chua sach trong gio hang roi
							check = true;
						}
					}
					if (check == false) { // chua ton tai trong gio hang
						ItemEntity item = new ItemEntity();
						item.setQuantity(quantity);
						item.setBook(book);
						item.setPrice(book.getPrice());
						listItems.add(item);
					}
					session.setAttribute("size", listItems.size());
					session.setAttribute("order", order);
				}
			}
			request.getRequestDispatcher("/cart.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/cart.jsp").forward(request, response);
		}
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	}


	
}
