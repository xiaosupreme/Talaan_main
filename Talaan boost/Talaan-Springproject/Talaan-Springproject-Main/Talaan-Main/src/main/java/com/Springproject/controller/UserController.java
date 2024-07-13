package com.Springproject.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController{
	
	String usernameforclass = "";

	@GetMapping("/register")
	public String registerUser()
	{
		return "register";
		
	}
	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
	}
	
	
	@GetMapping("/buy")
	public String buy() {
		return "buy";
	}
	

	
	@GetMapping("/user/books")
	public String getbook(Model model) {
		return "ubook";
	}
	
	@GetMapping("/user/books/add")
	public String userbook(Model model) {
		return "ubooksAdd";
	}
	
	@GetMapping("/books/sendRequest")
	public String userbookReq(Model model) {
		return "bookreq";
	}
	
	
	@RequestMapping(value = "newuserregister", method = RequestMethod.POST)
	public String newUseRegister(@RequestParam("username") String username,@RequestParam("password") String password,@RequestParam("email") String email)
	{
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			PreparedStatement pst = con.prepareStatement("insert into users(username,password,email) values(?,?,?);");
			pst.setString(1,username);
			pst.setString(2, password);
			pst.setString(3, email);
			
			

			//pst.setString(4, address);
			int i = pst.executeUpdate();
			System.out.println("data base updated"+i);
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/";
	}
}
