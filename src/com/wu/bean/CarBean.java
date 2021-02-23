package com.wu.bean;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.Generated;

@Entity
public class CarBean {
	@Id
	@GeneratedValue
	int carno;
	@Column(length = 30 )
	String  owner_name;
	@Column(length = 30 )
	String  car_name;
	@Column(length = 15 )
	String  type;
	@Column(length = 15 )
	String  color;
	int age;
	int cost;
	@Column(length = 5)
	String negotiable;
	
	public CarBean() {}
	public CarBean(String owner_name, String car_name, String type, String color, int age, int cost,
			String negotiable) {
		super();
		this.owner_name = owner_name;
		this.car_name = car_name;
		this.type = type;
		this.color = color;
		this.age = age;
		this.cost = cost;
		this.negotiable = negotiable;
	}
	public int getCarno() {
		return carno;
	}
	public void setCarno(int carno) {
		this.carno = carno;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getNegotiable() {
		return negotiable;
	}
	public void setNegotiable(String negotiable) {
		this.negotiable = negotiable;
	}
	@Override
	public String toString() {
		return "SellerBean [carno=" + carno + ", owner_name=" + owner_name + ", car_name=" + car_name + ", type=" + type
				+ ", color=" + color + ", age=" + age + ", cost=" + cost + ", negotiable=" + negotiable + "]";
	}
	
	
}
