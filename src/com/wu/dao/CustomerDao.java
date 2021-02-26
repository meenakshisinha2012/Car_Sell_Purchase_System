package com.wu.dao;

import java.util.List;

import com.wu.bean.CarBean;

public interface CustomerDao {

	List<CarBean> getAllCars();
	List<String> getColorDropDown();
	List<String> getTypeDropDown();
	List<CarBean> getTypeFilter(String type);
	List<CarBean> getColorFilter(String color);
	List<CarBean> getCostFilter(String cost);
	List<CarBean> getFilterAll(String carName, String carAge, String carCost, String carColor, String carType);

}
