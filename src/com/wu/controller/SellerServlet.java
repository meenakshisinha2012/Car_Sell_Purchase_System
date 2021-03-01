package com.wu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wu.bean.CarBean;
import com.wu.dao.SellerDao;
import com.wu.daoImpl.SellerDaoImpl;

@WebServlet("/SellerServlet")
public class SellerServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		//fetch Data from Seller.jsp
		String negotiable = "";
		String owner_name = request.getParameter("ownerName");
		String car_name = request.getParameter("carName");
		String type = request.getParameter("carType");
		String color = request.getParameter("color");
		int age = Integer.parseInt(request.getParameter("carAge"));
		int cost = Integer.parseInt(request.getParameter("carCost"));
		
		if(request.getParameter("negotiable")!=null)
		{
			negotiable = "1";
 		}
		else
		{
			negotiable = "0";
		}
		
		// Store car data in CarBean instance
		CarBean car = new CarBean();
		car.setOwner_name(owner_name);
		car.setCar_name(car_name);
		car.setType(type);
		car.setColor(color);
		car.setAge(age);
		car.setCost(cost);
		car.setNegotiable(negotiable);
		
		// Create SellerDao instance to store data to DB
		SellerDao sellerDao = new SellerDaoImpl();
		if(sellerDao.storeCarData(car) > 0)
		{
			request.setAttribute("status","1");
			System.out.println(request.getAttribute("status"));
			System.out.println("Successfully inserted!!");
			request.getRequestDispatcher("Seller.jsp").forward(request, response);
			
		}
		else
		{
			request.setAttribute("status","0");
			System.out.println("Insertion unsuccessfull!!");
			request.getRequestDispatcher("Seller.jsp").forward(request, response);

		}
//		out.println("<h1> DATA SAVED SUCCESSFULLY!!");
	}

}
