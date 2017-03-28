package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.SubCategory;
import com.niit.model.User;

@Repository("subCategoryDao")
@Transactional
public class SubCategoryDaoImpl implements SubCategoryDao {

	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.openSession();
	}

	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<SubCategory> getAllSubCategory(int categoryId) {
		// TODO Auto-generated method stub
		Session session = getSession();

		Query query = session.createQuery("from SubCategory where category.categoryId=?");
		query.setInteger(1, categoryId);
		List<SubCategory> subCategoryList = query.list();

		return subCategoryList;
	}
	public SubCategory getSubCategoryBysubCategoryId(int subCategoryId) {
		Session session = getSession();

		return (SubCategory) session.get(SubCategory.class, subCategoryId);
	}
	
		
	
}
