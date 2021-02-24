package com.wu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wu.bean.CarBean;
import com.wu.dao.CustomerDao;
import com.wu.daoImpl.CustomerDaoImpl;


@WebServlet("/ProcessFilterServlet")
public class ProcessFilterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String carName = request.getParameter("carname");
		String carAge = request.getParameter("age");
		String carCost = request.getParameter("CostRangeDropDown");
		String carColor = request.getParameter("carColorDropDown");
		String carType = request.getParameter("carTypeDropDown");
		
		 System.out.println(carName);
		 System.out.println(carAge);
		 System.out.println(carType);
		 System.out.println(carColor);
		System.out.println(carCost);
		if(carCost.equals("<5"))
			carCost = "cost < 500000";
		else if(carCost.equals("5-10"))
			carCost="cost between 500000 and 1000000";
		else
			carCost="cost > 1000000";
		
		CustomerDao dao = new CustomerDaoImpl();
				
		if(!carType.equals("null"))
		{
			List<CarBean> listCarType = dao.getTypeFilter(carType);
			System.out.println("In typeif");
			request.setAttribute("Cars", listCarType);
		}
		else if(!carColor.equals("null"))
		{
			List<CarBean> listCarColor = dao.getColorFilter(carColor);
			System.out.println("In colorif");
			request.setAttribute("Cars", listCarColor);
		}
		else if(!carCost.equals("null"))
		{
			List<CarBean> listCarCost = dao.getCostFilter(carCost);
			System.out.println("In costif");
			System.out.println(listCarCost);
			request.setAttribute("Cars", listCarCost);
		}
//		else
//		{
////			List<CarBean> listCars = dao.getFilterAll(carName, carAge, carCost, carColor, carType);
////			request.setAttribute("Cars", listCars);
//		}
		request.getRequestDispatcher("Customer.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
