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

	public List<CarBean> getAllCars()
	{
		String hql = "from cardata";
		List<CarBean> cars = new ArrayList<>();
		try(Session session = HibernateUtil.getSessionFactory().getCurrentSession())
		{
			Transaction tx = session.beginTransaction();
			Query query = session.createQuery(hql);
			cars = query.getResultList();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		return cars;
	}
}
