package com.springmvcproject.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.springmvcproject.model.User;



public class UserDao {
	static Configuration con = null;
	static SessionFactory sf = null;
	static Session s = null;
	static {
        try {
            sf = new Configuration().configure().buildSessionFactory();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	public static boolean validateLogin(String user, String password)
	{
		try
		{
		s = sf.openSession();
		Query q = s.createQuery("from Admin where name=:u and password=:p");
		q.setParameter("u", user);
		q.setParameter("p", password);
		if(q.uniqueResult() != null)
		{
			return true;
		}
		}
		finally
		{
			s.close();
		}
		return false;
		}
	public static List<User> displayUser()
	{
			List<User> l=null;
			try
			{
			s = sf.openSession();
			Query q = s.createQuery("From User");
			 l = q.list();
			}
			finally
			{
				s.close();
			}
			return l;
				
	}
	public static void deleteUser(int id)
	{
		s = sf.openSession();
		Transaction t = s.beginTransaction();
		User user = s.get(User.class, id);
		s.delete(user);
		t.commit();
		s.close();
		
	}
	public static void insert(User u)
	{	s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(u);
		t.commit();
		s.close();
	}
	public static User getUser(int id)
	{
		s = sf.openSession();
		User u=s.get(User.class, id);
		s.close();
		return u;
		
	}
	public static void updateUser(User u)
	{	s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.update(u);
		t.commit();
		s.close();
	}

}
