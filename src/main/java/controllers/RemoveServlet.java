package main.java.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.java.entity.ItemEntity;
import main.java.entity.OrderEntity;

@WebServlet("/removeCart")
public class RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String id = request.getParameter("bookId");
//		
//		HttpSession session = request.getSession();
//		session.removeAttribute("order");
//		response.sendRedirect(request.getContextPath() + "/addtoCart");
		
		    int removeId = Integer.parseInt(request.getParameter("bookId"));
		    
		    HttpSession session = request.getSession();
		    if (session.getAttribute("order") != null) {
		        OrderEntity order = (OrderEntity) session.getAttribute("order");
		        List<ItemEntity> listItems = order.getItems();
		        for (int i = 0; i < listItems.size(); i++) {
		            if (listItems.get(i).getBook().getId() == removeId) {
		                listItems.remove(i);
		                break;
		            }
		        }
		        session.setAttribute("size", listItems.size());
		        session.setAttribute("order", order);
		    }
		    request.getRequestDispatcher("/cart.jsp").forward(request, response);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
