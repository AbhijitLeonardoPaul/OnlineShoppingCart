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
	public void updateProducts(Product Product) {
		// TODO Auto-generated method stub
		Session session = getSession();

		String s = Product.getProductName();

		session.update(Product);

		session.flush();

		session.close();
	}
	public void deleteUsers(int productId) {
		// TODO Auto-generated method stub
		
		Session session = getSession();

		Query query = session.createQuery("from Product where productId = ?");
		query.setInteger(0, productId);

		Product p=(Product) query.uniqueResult();
		session.delete(p);
		session.flush();

		session.close();
		
	}
	public Product getProductById(int ProductId) {
		// TODO Auto-generated method stub
		Session session = getSession();
		return (Product) session.get(Product.class, ProductId);
		
	}
	public Product getProductByProductName(String ProductName) {
		// TODO Auto-generated method stub
		Session session = getSession();

		Query query = session.createQuery("from Product where ProductName = ?");
		query.setString(0, ProductName);

		return (Product) query.uniqueResult();

	}
	public void deleteProducts(int productId) {
		// TODO Auto-generated method stub
		
	}
	public Product getProductsByProductName(String productName) {
		// TODO Auto-generated method stub
		return null;
	}

}
