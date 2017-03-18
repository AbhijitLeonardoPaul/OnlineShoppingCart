package com.niit.dao;

import java.sql.PreparedStatement;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;
import com.niit.model.SubCategory;


@Repository("productDao")
@Transactional
public class ProductDaoImpl implements  ProductDao{
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
	
	public List<Product> getAllProducts(int subCategoryId) {
		// TODO Auto-generated method stub
		Session session = getSession();

		Query query = session.createQuery("from Product where productSubCategory.subCategoryId=?");
		query.setInteger(0, subCategoryId);
		List<Product> productList = query.list();

		return productList;
	}
}
