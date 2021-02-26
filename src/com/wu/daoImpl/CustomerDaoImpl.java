package com.wu.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.wu.bean.CarBean;
import com.wu.dao.CustomerDao;
import com.wu.hibernate.util.HibernateUtil;

public class CustomerDaoImpl implements CustomerDao {

	public List<CarBean> getAllCars() {
		String hql = "from CarBean";
		List<CarBean> cars = new ArrayList<>();
		try (Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
			Transaction tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			cars = query.list();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return cars;
	}

	public List<String> getColorDropDown() {
		String hql = "select distinct color from CarBean";
		List<String> colors = new ArrayList<>();
		try (Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
			Transaction tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			colors = query.list();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println(colors);
		return colors;
	}

	public List<String> getTypeDropDown() {
		String hql = "select distinct type from CarBean";
		List<String> types = new ArrayList<>();
		try (Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
			Transaction tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			types = query.list();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println(types);
		return types;
	}

	public List<CarBean> getTypeFilter(String type) {
		String hql = "from CarBean where type = :type";
		List<CarBean> cars = new ArrayList<>();
		try (Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
			Transaction tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			query.setParameter("type", type);
			cars = query.list();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cars;
	}
	
	public List<CarBean> getColorFilter(String color) {
		String hql = "from CarBean where color = :color";
		List<CarBean> cars = new ArrayList<>();
		try (Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
			Transaction tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			query.setParameter("color", color);
			cars = query.list();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cars;
	}
	
	public List<CarBean> getCostFilter(String cost) {
		String hql = "from CarBean where " + cost;
		List<CarBean> cars = new ArrayList<>();
		try (Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
			Transaction tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			cars = query.list();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cars;
	}

	public List<CarBean> getFilterAll(String carName, String carAge, String carCost, String carColor, String carType) {
		String hql = "from CarBean where  car_name" + carName +"and age="+carAge+"and cost="+carCost+"and color="+carColor+"and type="+carType;
		List<CarBean> cars = new ArrayList<>();
		try (Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
			Transaction tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			cars = query.list();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cars;
	}
}
