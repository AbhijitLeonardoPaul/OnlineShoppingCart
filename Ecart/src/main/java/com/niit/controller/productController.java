package com.niit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.Serializable;
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

import com.niit.model.Product;
import com.niit.model.SubCategory;
import com.niit.model.Users;
import com.niit.dao.ProductDao;
import com.niit.dao.SubCategoryDao;
import com.niit.dao.UsersDao;

@Controller
public class ProductController implements Serializable {
	@Autowired
	ProductDao productDao;
	@Autowired
	SubCategoryDao  subCategoryDao;
	@RequestMapping("/productentry")
	public ModelAndView showform() {
		return new ModelAndView("productEntry", "command", new Product());
	}

	@RequestMapping(value="/save",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("product") Product product , HttpServletRequest request, 
			@RequestParam("file") MultipartFile file){
		String fileName = "";
		String productImage = "";
		ServletContext context = request.getServletContext();
		String realContextPath = context.getRealPath("/");
		String un = product.getProductName();
		SubCategory s=subCategoryDao.getSubCategoryBysubCategoryId(product.getProductSubCategory().getSubCategoryId());
		product.setProductSubCategory(s);
        if (file != null){
		fileName = realContextPath + "/resources/images/" + un + ".jpg";
		productImage = "resources/images/" + un + ".jpg";
		System.out.println("===" + fileName + "===");
		File fileobj = new File(fileName);
		try{
			FileOutputStream fos = new FileOutputStream(fileobj);
			byte[] fileBytes = file.getBytes();
			fos.write(fileBytes);
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	product.setProductImage(productImage);
	System.out.println( productImage);
	productDao.addProducts(product);
    return new ModelAndView("redirect:/myproducts");
        }//will redirect to viewusers request mapping  
        else
        {
        	productDao.addProducts(product);
            return new ModelAndView("redirect:/myproducts");
        	
        }
	}

	@RequestMapping("/myproducts")
	public ModelAndView viewproducts() {
		List<Product> list = productDao.getAllProducts();
		return new ModelAndView("myproducts", "list", list);
	}

	@RequestMapping(value="/editproduct/{id}" )  
    public ModelAndView edit(@PathVariable int id){  
        Product Product=productDao.getProductById(id); 
        return new ModelAndView("producteditform","command",Product);  
    }  
	@RequestMapping(value="/editsave",method = RequestMethod.POST)  
    public ModelAndView editsave(@ModelAttribute("Product") Product Product){  
		productDao.updateProducts(Product);
        return new ModelAndView("redirect:/myproducts");  
    }  
	@RequestMapping(value="/deleteproduct/{id}",method = RequestMethod.GET)  
    public ModelAndView delete(@PathVariable int id){ 
    	System.out.println("delete is called");
       productDao.deleteProduct(id);
        return new ModelAndView("redirect:/myproducts");  
    }  
	}

