package com.wu.daoImpl;


import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.wu.bean.Users;
import com.wu.dao.LoginDao;
import com.wu.hibernate.util.HibernateUtil;

public class LoginDaoImpl implements LoginDao {

	@Override
	public String validateUser(Users user) {
		String resultMsg = "Error! User cannot be found. Please enter valid credentials";
		Users u1=new Users();
		try(Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
			System.out.println("In try");
			
			Transaction tx = session.beginTransaction();

			String hql = "FROM Users WHERE USERNAME =:username AND PASSWORD =:password";

			Query query = session.createQuery(hql);
			query.setParameter("username", user.getUsername());
			query.setParameter("password", user.getPassword());
			System.out.println("User from DB ");
			u1= (Users)query.uniqueResult();
			System.out.println("User from DB "+ u1);
			tx.commit();
		} catch (Exception e) {
			e.getStackTrace();
		}
		if(u1 !=null)
			return u1.getType();
		
		return resultMsg;
	}

}
