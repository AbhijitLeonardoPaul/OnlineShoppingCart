package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.BillingAddressDao;
import com.niit.model.BillingAddress;
import com.niit.model.User;

@Controller
public class BillingController {

	@Autowired
	BillingAddressDao billingAddressDao;

	@RequestMapping("/billing")  
    public ModelAndView showform(){  
        return new ModelAndView("billing","command",new BillingAddress());  
    }

	@RequestMapping(value="/saveBillingAddress",method = RequestMethod.POST)  
	    public ModelAndView save(@ModelAttribute("billingAddress") BillingAddress billingAddress){
		
		billingAddressDao.addAddress(billingAddress);
        return new ModelAndView("redirect:/home");
}
}