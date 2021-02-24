package com.wu.dao;

import java.util.List;

import com.wu.bean.CarBean;

public interface CustomerDao {

	List<CarBean> getAllCars();
	List<String> getColorDropDown();
	List<String> getTypeDropDown();

}
