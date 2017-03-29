package com.niit.controller;

import java.io.Serializable;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.dao.CartItemsDao;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;
import com.niit.model.Cart;
import com.niit.model.CartItems;
import com.niit.model.Product;
import com.niit.model.User;


@Controller
public class CartController implements Serializable{
	
	@Autowired
	  ProductDao productDao;
	  
	@Autowired
	  CartItemsDao cartItemsDao;
	@Autowired
	CartDao cartDao;
	@Autowired
	UserDao userDao;

	
	private void updateCart(CartItems cartItem)
	 {
		 Cart c1=cartItem.getCart();
		 c1.setGrandTotal(c1.getGrandTotal()+cartItem.getProduct().getProductPrice());
		 cartItemsDao.saveOrUpdate(cartItem);
	 }
	 
	 @RequestMapping("/cart/addItem/{productId}")
	 public ModelAndView addItemToCart(@PathVariable int productId, Principal principal, HttpSession session){
		 ModelAndView mv = new ModelAndView("redirect:/cart");
		 String id = principal.getName();
		 System.out.println("logged in user "+id);
		 
		 Product product = productDao.getProductById(productId);
		 User u = userDao.getUsersById(id);
		 //Cart cart = cartDao.getCartByUserId(id);
		 Cart cart=u.getCart();
		 if(cart==null)
		 {
			 System.out.println("No cart ");
			 Cart c = new Cart();
			 User user = userDao.getUsersById(id);
			 
		/*	 c.setUser(user);
			 cartDao.saveOrUpdate(c);
			 user.setCart(c);
			 userDao.editUsers(user);*/
			 
			 CartItems cartItem = new CartItems();
			 cartItem.setCart(c);
			 cartItem.setProduct(product);
			 cartItem.setQuantity(1);
			 cartItem.setSubTotal(product.getProductPrice());
			 cartItemsDao.saveOrUpdate(cartItem);
			 updateCart(cartItem);
			 session.setAttribute("cart", cartItem.getCart());
			 
			 return mv;
		 }
		 
		 System.out.println("Yes cart");
		 
		 List <CartItems> cartItems = cart.getCartItems();
		 
		 for(CartItems cartItem:cartItems)
		 {
			if(cartItem.getProduct().getProductId()==productId)
			{
				cartItem.setQuantity(cartItem.getQuantity()+1);
				cartItem.setSubTotal(cartItem.getSubTotal()+product.getProductPrice());
				cartItemsDao.saveOrUpdate(cartItem);
				updateCart(cartItem);
				session.setAttribute("cart", cartItem.getCart());
				return mv;
			}
		 }
		 
		 CartItems item = new CartItems();
		 item.setCart(cart);
		 item.setProduct(product);
		 item.setQuantity(1);
		 item.setSubTotal(product.getProductPrice());
		 cartItemsDao.saveOrUpdate(item);
		 updateCart(item);
		 session.setAttribute("cart", item.getCart());
		 return mv;
		 
	 }
	
}
