package com.wu.daoImpl;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.wu.bean.CarBean;
import com.wu.dao.SellerDao;
import com.wu.hibernate.util.HibernateUtil;

public class SellerDaoImpl implements SellerDao {
	//Saving seller's car data to database
	@Override
	public int storeCarData(CarBean car) {
		try(Session session = HibernateUtil.getSessionFactory().getCurrentSession())
		{
			Transaction tx = session.beginTransaction();
			session.save(car);
			tx.commit();
			return 1;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return 0;
	}

}
