package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;
import com.niit.model.Users;
@Repository("categoryDao")
@Transactional
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	protected Session getSession() {
		return sessionFactory.openSession();
	}
	public List<Category> getAllCategory() {
		// TODO Auto-generated method stub
		
		
		Session session = getSession();

		Query query = session.createQuery("from Category");
		List<Category> categoryList = query.list();

		return categoryList;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
