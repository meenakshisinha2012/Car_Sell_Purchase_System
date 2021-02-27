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
import com.wu.operations.CustomerOperation;


@WebServlet("/ProcessFilterServlet")
public class ProcessFilterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String carName = request.getParameter("carname");
		String carAge = request.getParameter("age");
		String carCost = request.getParameter("CostRangeDropDown");
		String carColor = request.getParameter("carColorDropDown");
		String carType = request.getParameter("carTypeDropDown");
		String clearFilter = request.getParameter("clearFilter");
		
		//CustomerOperation Object Created
		CustomerOperation custOps = new CustomerOperation();

		
		 System.out.println("CarName " +carName);
		 System.out.println("Age "+ carAge);
		 System.out.println("Type "+carType);
		 System.out.println("Color "+carColor);
		System.out.println("Cost "+carCost);
		
		
		if(carCost.equals("<5"))
			carCost = "cost < 500000";
		else if(carCost.equals("5-10"))
			carCost="cost between 500000 and 1000000";
		else if(carCost.equals(">10"))
			carCost="cost > 1000000";
		
		
		CustomerDao dao = new CustomerDaoImpl();
		
		if(!carType.equals("null"))
		{
			List<CarBean> listCarType = dao.getTypeFilter(carType);
			System.out.println("In typeif");
			custOps.getDropdownData(request);
			request.setAttribute("Cars", listCarType);
		}
		else if(!carColor.equals("null"))
		{
			List<CarBean> listCarColor = dao.getColorFilter(carColor);
			System.out.println("In colorif");
			custOps.getDropdownData(request);
			request.setAttribute("Cars", listCarColor);
		}
		else if(!carCost.equals("null"))
		{
			List<CarBean> listCarCost = dao.getCostFilter(carCost);
			System.out.println("In costif");
			System.out.println(listCarCost);
			custOps.getDropdownData(request);
			request.setAttribute("Cars", listCarCost);
		}else if(!clearFilter.equals(null)) {
			
			custOps.getDropdownData(request);
			request.getRequestDispatcher("Customer.jsp").forward(request, response);
		}
		else {
			List<CarBean> listCars = dao.getAllCars();
			request.setAttribute("Cars", listCars);
		}
//		else{
//			List<CarBean> listCars = dao.getFilterAll(carName, carAge, carCost, carColor, carType);
//			request.setAttribute("Cars", listCars);
//		}
//		
		
		request.getRequestDispatcher("Customer.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
