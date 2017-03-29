package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Cart;
import com.niit.model.CartItems;
import com.niit.model.Product;
import com.niit.model.User;




@Repository("CartItemsDao")
@Transactional
public class CartItemsDaoImpl implements CartItemsDao{
	
	 
	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.openSession();
	}
	
	public boolean saveOrUpdate(CartItems cartItem)
	{
		try{
			Session session = getSession();
			session.saveOrUpdate(cartItem);
			session.flush();
			session.close();
			
			return true;
			
			}catch(Exception e){
				e.printStackTrace();
				return false;
			}
	}
	
	public void delete(int cartItemId) {
		
		
		Session session = (Session) getSession();

		Query query = (Query) session.createQuery("from CartItems where cartItemId = ?");
		 query.setInteger(0, cartItemId);

		CartItems c=(CartItems) query.uniqueResult();
		
		session.delete(c);
		session.flush();

		session.close();
	
	}
	
	
	
	/*public Cart getCartByUserId(String userId)
	{	
		String hql = "from User where userId=" + "'" + userId + "'";
		
		Session session = (Session) getSession();
		Query query = (Query) session.createQuery(hql);
		@SuppressWarnings("unchecked")
		
		List<User> list = (List<User>) query.list();
		
		if(list == null || list.isEmpty())
		{
			session.flush();
			session.close();
			return null;
		}
		else
		{
			session.flush();
			session.close();
			return list.get(0).getCart();
		}
	}*/
	

	

		
}