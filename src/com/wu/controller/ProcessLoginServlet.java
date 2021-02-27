package com.wu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wu.bean.CarBean;
import com.wu.bean.Users;
import com.wu.dao.CustomerDao;
import com.wu.dao.LoginDao;
import com.wu.daoImpl.CustomerDaoImpl;
import com.wu.daoImpl.LoginDaoImpl;
import com.wu.operation.CustomerOperation;


@WebServlet("/ProcessLoginServlet")
public class ProcessLoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		// Fetch "USERNAME" & "PASSWORD" from login.jsp
		String username = request.getParameter("username");
		String password  = request.getParameter("password");
		
		// Store user data in UserBean instance
		Users user= new Users();
		user.setUsername(username);
		user.setPassword(password);
		System.out.println("User "+user);

		// Create LoginDao instance to validate user based on username & password
		LoginDao loginDao = new LoginDaoImpl();
		String resultValidate = loginDao.validateUser(user);
		System.out.println(resultValidate);


		//Setting session values
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		
		if(resultValidate.equals("Seller")){
			request.getRequestDispatcher("Seller.jsp").forward(request, response);
		}else if(resultValidate.equals("Customer")){
			CustomerOperation custOps = new CustomerOperation();
//			custOps.getDropdownData(request);
//			
//			System.out.println("Req "+request);
//			
//			request.setAttribute("Cars", req.getAttribute("Cars"));
//			request.setAttribute("Colors", req.getAttribute("Colors"));
//			request.setAttribute("Types", req.getAttribute("Types"));
			
			request.getRequestDispatcher("Customer.jsp").forward(request, response);
		}else{
			request.setAttribute("errorMsg", resultValidate);
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
}
