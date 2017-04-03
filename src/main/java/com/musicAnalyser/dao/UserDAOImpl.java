/**
 * 
 */
package com.musicAnalyser.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.musicAnalyser.beans.LoginBean;
import com.musicAnalyser.beans.LoginResult;
import com.musicAnalyser.beans.RegistrationBean;

/**
 * @author Hareesha Feb 9, 2017
 */
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	private Session session;
	private Transaction tx;
	
	/**
	 * AddUser meth
	 */
	@Override
	public void addUser(RegistrationBean obj) {
		try {
			System.out.println("start of dao");
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(obj);
			tx.commit();
			System.out.println("end of dao");
		} catch (Exception ex) {
			ex.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}
	}
	/**
	 * This methods verifies the login credentials
	 * @return
	 */
        
	public LoginResult loginUser(LoginBean bean){
		LoginResult res = new LoginResult();
		session = sessionFactory.openSession();
		Query q = session.createQuery("Select u.fname,u.psw from RegistrationBean u where u.email= :email");
		q.setParameter("email", bean.getUname());
		
		 List<Object[]> users =q.list();
		 
		 if(users.size() == 1){
			 Object[] first = users.get(0); //this gives the first list item
			 String uname =(String)first[0];
			 String psw =(String)first[1]; 
			 if(psw.equals(bean.getPsw())){
				 res.setFname(uname);
				 res.setResult(true);
			}
		 }
		return res;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
