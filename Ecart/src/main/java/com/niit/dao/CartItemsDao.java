package com.niit.dao;

import java.util.List;

import com.niit.model.CartItems;

public interface CartItemsDao {
	
public boolean saveOrUpdate(CartItems cartItem);
	
	public void delete(int cartItemId);
	
	public CartItems get(int cartItemId);
	
	public List<CartItems> getCartItemByCartId(int cartId);
}
