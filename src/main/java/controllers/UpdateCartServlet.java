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

@WebServlet("/updateCart")
public class UpdateCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();
	    OrderEntity order = (OrderEntity) session.getAttribute("order");
	    List<ItemEntity> listItems = order.getItems();
	    for (ItemEntity item : listItems) {
	        String quantityParamName = "quantity_" + item.getBook().getId();
	   // getParameterMap() dùng lấy các tham số (parameters) từ request được gửi đến server có thể chứa các tham số được đính kèm với nó.
	   // containsKey()  kiểm tra xem có tồn tại một entry nào trong Map có key trùng với quantityParamName hay không. 
	   // Nếu có, nó sẽ trả về true, ngược lại nó sẽ trả về false.
	        if (request.getParameterMap().containsKey(quantityParamName)) {
	            int newQuantity = Integer.parseInt(request.getParameter(quantityParamName));
	            item.setQuantity(newQuantity);
	        }
	    }
	    double total = calculateTotal(listItems);
	    order.setTotal(total);
	    session.setAttribute("total", total);
	    session.setAttribute("order", order);
	    request.getRequestDispatcher("/cart.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private double calculateTotal(List<ItemEntity> listItems) {
		double total = 0;
		for (ItemEntity item : listItems) {
			total += item.getPrice() * item.getQuantity();
		}
		return total;
	}
}
