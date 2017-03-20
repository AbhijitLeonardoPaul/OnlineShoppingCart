package com.niit.controller;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.model.Category;
import com.niit.model.Product;
@Controller
public class CategoryController implements Serializable {

	/*@Autowired
	CategoryDao  categoryDao;
	 @RequestMapping("/testmenu")  
	    public ModelAndView menu( ){  
		 //System.out.println("cat id "+categoryId);
		 ModelAndView mv= new ModelAndView("menu");
		 mv.addObject("categoryList", categoryDao.getAllCategory());
	        return mv;  
	    } */
	
	
	
		@Autowired
		CategoryDao categoryDao;
		@Autowired
	    ProductDao  productDao;
	    
		@RequestMapping("/menu")  
		public ModelAndView viewproduct(){  
		    List<Category> list=categoryDao.getAllCategory();
		    return new ModelAndView("header","categoryList",list);  
		}  
		
		@RequestMapping("/showProductsBySubCategory/{subCategoryId}")  
		public ModelAndView showProducts(@PathVariable("subCategoryId")  int subCategoryId){  
		    List<Product> list=productDao.getAllProducts(subCategoryId);
		    return new ModelAndView("products","productList",list);  
		} 
		
}
