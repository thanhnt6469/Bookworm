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

@WebServlet("/managerAccount")
public class ManagerAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/ManagerAccount.jsp";
		String indexPage = request.getParameter("index");
		int index = 1;
		if (indexPage != null) index = Integer.parseInt(indexPage);
		
		HttpSession session = request.getSession();
		AccountEntity a = (AccountEntity) session.getAttribute("acc"); //session.getAttribute("acc"); -> tra ve 1 doan String -> ep String sang Object la AccountEntity -> a la 1 Object da luu tren session
		ProductDAO productDAO = new ProductDAO(); 
		List<AccountEntity> accountList = productDAO.getAccountBySellID();
		List<AccountEntity> accountPaging = productDAO.pagingAccountBySellID(index);
		int totalAccount = productDAO.getAccountBySellID().size();
		int endPage = totalAccount / 4;
		if (totalAccount % 4 != 0) endPage++;
		System.out.println(index);
		request.setAttribute("tag", index);
		request.setAttribute("end", endPage);
		request.setAttribute("accountList", accountList);
		request.setAttribute("accountPage", accountPaging);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
