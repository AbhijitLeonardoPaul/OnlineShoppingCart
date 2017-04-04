package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.BillingAddress;
import com.niit.model.Cart;

@Repository("billingAddressDao")
@Transactional
public class BillingAddressDaoImpl implements BillingAddressDao {

	
	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.openSession();
	}
	public void addAddress(BillingAddress Address) {
		// TODO Auto-generated method stub

		Session session = getSession();

		int a = Address.getBillingID();

		session.save(Address);

		session.flush();

		session.close();

	}
}
