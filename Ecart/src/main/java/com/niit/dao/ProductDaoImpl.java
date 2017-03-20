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
import com.niit.model.Users;


@Repository("productDao")
@Transactional
public class ProductDaoImpl implements  ProductDao{
	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.openSession();
	}
	public void addProducts(Product product) {
		// TODO Auto-generated method stub

		Session session = getSession();

		String s = product.getProductName();

		session.save(product);

		session.flush();

		session.close();

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
	public List<Product> getAllProducts(){
		Session session = getSession();

		Query query = session.createQuery("from Product ");
		
		List<Product> productList = query.list();

		return productList;
		
	}
}
