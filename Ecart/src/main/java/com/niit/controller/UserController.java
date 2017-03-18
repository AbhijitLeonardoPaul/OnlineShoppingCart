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

import com.niit.dao.UsersDao;
import com.niit.model.Users;


@Controller  
public class UserController {
	  @Autowired 
	  UsersDao usersDao;
	  @RequestMapping("/index")  
	    public ModelAndView index(){  
	        return new ModelAndView("index");  
	    } 
	  
	@RequestMapping("/form")  
    public ModelAndView showform(){  
        return new ModelAndView("form","command",new Users());  
    } 
	/*
	 It saves object into database. The @ModelAttribute puts request data 
     *  into model object. You need to mention RequestMethod.POST method  
     *  because default request is GET */ 
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("users") Users users , HttpServletRequest request, 
			@RequestParam("file") MultipartFile file){  
				
				byte fileBytes[];
				FileOutputStream fos = null;
				
				String fileName = "";
				String userImage = "";
				ServletContext context = request.getServletContext();
				String realContextPath = context.getRealPath("/");
				String un = users.getUserName();
				if (file != null){
					fileName = realContextPath + "/resources/images/" + un + ".jpg";
					userImage = "resources/images/" + un + ".jpg";
					System.out.println("===" + fileName + "===");
					File fileobj = new File(fileName);
					try{
						fos = new FileOutputStream(fileobj);
						fileBytes = file.getBytes();
						fos.write(fileBytes);
					} catch(Exception e) {
						e.printStackTrace();
					}
					
					
				}
				users.setUserImage(userImage);
		
				System.out.println("mmmmmmf"+ userImage);
    	usersDao.addUsers(users);
        return new ModelAndView("redirect:/viewusers");//will redirect to viewusers request mapping  
    }
     /*It provides list of users in model object   */
    @RequestMapping("/viewusers")  
    public ModelAndView viewusers(){  
        List<Users> list=usersDao.getAllUsers();
        return new ModelAndView("viewusers","list",list);  
    }  
    
 /*    It displays object data into form for the given id.  
     * The @PathVariable puts URL data into variable.*/  
    @RequestMapping(value="/editusers/{id}" )  
    public ModelAndView edit(@PathVariable int id){  
        Users users=usersDao.getUsersById(id);  
        return new ModelAndView("userseditform","command",users);  
    }  
    
    
    /* It updates model object.  */ 
    @RequestMapping(value="/editsave",method = RequestMethod.POST)  
    public ModelAndView editsave(@ModelAttribute("users") Users users){  
    	usersDao.updateUsers(users);
        return new ModelAndView("redirect:/viewusers");  
    }  
     
    /*
     It deletes record for the given id in URL and redirects to /viewusers  */ 
    @RequestMapping(value="/deleteusers/{id}",method = RequestMethod.GET)  
    public ModelAndView delete(@PathVariable int id){ 
    	System.out.println("delete is called");
       usersDao.deleteUsers(id);
        return new ModelAndView("redirect:/viewusers");  
    }  
     	
       
}
