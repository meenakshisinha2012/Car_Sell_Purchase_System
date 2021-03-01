package com.wu.operations;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wu.bean.CarBean;
import com.wu.dao.CustomerDao;
import com.wu.daoImpl.CustomerDaoImpl;

public class CustomerOperation {
//	private HttpServletRequest request= null;
//	private HttpServletResponse response=null;
	
	public void getDropdownData(HttpServletRequest request){
		CustomerDao custdao = new CustomerDaoImpl();
		List<CarBean> cars = custdao.getAllCars();
		System.out.println("Cars "+cars);
		List<String> colors = custdao.getColorDropDown();
		System.out.println("Colors "+colors);

		List<String> types = custdao.getTypeDropDown();
		System.out.println("Types "+types);

		request.setAttribute("Cars", cars);
		request.setAttribute("Colors", colors);
		request.setAttribute("Types", types);
		
		System.out.println("Req from ops" + request );
		
//		return request;
	}
}