package com.niit.dao;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Cart;
@Repository("cartDao")
@Transactional
public class CartDaoImpl implements CartDao {

	
	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.openSession();
	}
	
	public void addCart(Cart cart) {
		// TODO Auto-generated method stub

		Session session = getSession();

		int s = cart.getCartID();

		session.save(cart);

		session.flush();

		session.close();

	}

	public void updateCart(Cart cart) {
		Session session = getSession();
		
		session.update(cart);
		session.flush();

		session.close();
	}

	
}
