package com.springmvcproject.controller;


import java.util.List;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.springmvcproject.dao.UserDao;
import com.springmvcproject.model.User;


@Controller
@RequestMapping
public class MyController {

	
	@PostMapping("/login")
	public String validateLogin(@RequestParam("user") String user,
			@RequestParam("password") String password)
			
	{
		boolean validateLogin = UserDao.validateLogin(user,password);
		if(validateLogin)
		{
			return "redirect:/display";
		}
		return "login.jsp";
		
		
	}
	@GetMapping("/display")
	public ModelAndView display()
	{
		ModelAndView mv = new ModelAndView();
		List<User> ulist = UserDao.displayUser();
		mv.addObject("ulist", ulist);
		mv.setViewName("user-list");
		return mv;
	}
	  @GetMapping("/add")
	    public String createUserForm() {
		 
		  
	       return "user-form";
	    }
	@PostMapping("/insert")	
	public String insert(@ModelAttribute("user") User u)
	{
		
		UserDao.insert(u);
	
		return "redirect:/display";
		
	}
	@GetMapping("/delete/{id}")
	public String deleteUser(@PathVariable int id)
	{
		UserDao.deleteUser(id);
		return "redirect:/display";
	}
	@GetMapping("/edit/{id}")
	public String  editUser(@PathVariable int id,Model m)
	{ 
		User u = UserDao.getUser(id);
		m.addAttribute("id",id);
		m.addAttribute("user", u);
		return "user-form";
		
		
	}

	
	@RequestMapping("/update")	
	public String updateUser(@ModelAttribute("user") User u)
	{
		System.out.println(u);
		
		UserDao.updateUser(u);
	
		
	
		return "redirect:/display";
		
	}
	

}
