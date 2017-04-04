package com.niit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.BillingAddressDao;
import com.niit.dao.CartDao;
import com.niit.dao.UserDao;
import com.niit.model.BillingAddress;
import com.niit.model.Cart;
import com.niit.model.User;


@Controller  
public class UserController {
	 
	@Autowired 
	  UserDao userDao;
	  @Autowired
	  CartDao cartDao;
	  @Autowired 
	  BillingAddressDao billingAddressDao;
	@RequestMapping("/register")  
    public ModelAndView showform(){  
        return new ModelAndView("register","command",new User());  
    } 
	
	
    @RequestMapping(value="/saveUser",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("user") User user){  
		user.setRole("ROLE_USER");
		user.setEnabled(true);
		
		Cart cart=new Cart();
		//cart.setUser(user);
		cartDao.addCart(cart);
		//cart.setUser(user);
		user.setCart(cart);
		
		BillingAddress Address = new BillingAddress();
		billingAddressDao.addAddress(Address);
		user.setBillingAddress(Address);
		
		
    	userDao.addUser(user);
        return new ModelAndView("redirect:/home");
    }
   
     	
       
}
