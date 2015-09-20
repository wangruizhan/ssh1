package com.hand.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.hand.dao.UserDao;
import com.hand.model.User;


@Repository("userDao")
public class UserDaoImpl implements UserDao {

	
	@Autowired()
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	private Session session;
	public boolean check(User user) {
		session = sessionFactory.getCurrentSession();
		String sql = "select user_pwd from User where user_name='"+user.getUser_name()+"'";  
		List list = session.createQuery(sql).list();  
		if(!list.isEmpty()) {  
			Iterator it = list.iterator();  
			while(it.hasNext()) {  
				String get = (String) it.next();  
				System.out.println(get); 
				if(get.equals(user.getUser_pwd())) {  

					return true;  
				}  
			}  
		}  
		return false;     
	}  
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	
	
}
