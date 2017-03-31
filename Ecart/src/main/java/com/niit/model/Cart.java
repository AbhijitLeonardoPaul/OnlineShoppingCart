package com.niit.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Cart implements Serializable {
	
	@Id
	@GeneratedValue
	private int cartID;
	private double grandTotal;
	
	/*@OneToOne
	@JoinColumn(name="id")
	User user;*/

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

	/*public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}*/
	@OneToMany(mappedBy="cart", fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	private List<CartItems> cartItems;

	public List<CartItems> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItems> cartItems) {
		this.cartItems = cartItems;
	}
}
