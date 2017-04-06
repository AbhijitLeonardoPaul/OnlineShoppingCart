package com.niit.controller;

import java.security.Principal;

import org.apache.catalina.realm.UserDatabaseRealm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.BillingAddressDao;
import com.niit.dao.UserDao;
import com.niit.model.BillingAddress;
import com.niit.model.User;

@Controller
public class BillingController {

	@Autowired
	BillingAddressDao billingAddressDao;
	@Autowired
	UserDao userDao;

	@RequestMapping("/billing")  
    public ModelAndView showform(){  
        return new ModelAndView("billing","command",new BillingAddress());  
    }

	@RequestMapping(value="/saveBillingAddress",method = RequestMethod.POST)  
	    public ModelAndView save(@ModelAttribute("billingAddress") BillingAddress billingAddress,Principal user){
		
		String n=user.getName();
		
		User u=userDao.getUsersById(n);
		
		billingAddressDao.addAddress(billingAddress);
		u.setBillingAddress(billingAddress);
		userDao.updateUser(u);
		
        return new ModelAndView("redirect:/home");
}
}