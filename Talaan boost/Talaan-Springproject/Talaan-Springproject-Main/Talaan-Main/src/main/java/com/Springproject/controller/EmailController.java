package com.Springproject.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmailController {

	
	
    @Autowired
    private EmailSenderService senderService;
    
    @RequestMapping(value = "/request", method = RequestMethod.POST )
    public void request(Request request, Model model) {
    	
    	String message2 = "A user requested to sell a book called "  + request.getTitle()  + " written by " + request.getAuthor() +  " and published on " + request.getYear() + " to be sold under the genre '" + request.getGenre() + "'. The book was described as '" + request.getDesc() +  "'. The seller's price is $" + request.getPrice() + " with " + request.getQuantity() + " stock. Contact them at: " + request.getEmail(); 
    	
    	System.out.println(message2);
    	senderService.sendSimpleEmail("talaanbooks@gmail.com", "Talaan Request", message2);
    	model.addAttribute("message", "Email sent successfully!");
    	
    	
    	senderService.sendSimpleEmail(request.getEmail(), "Talaan Request", "Your request is being processed, a person from Talaan would contact you as soon as possible, Thank you");
    	model.addAttribute("message", "Email sent successfully!");
    	
       
    }


    
   

    @RequestMapping(value = "/order", method = RequestMethod.POST )
    public void order(Order order, Model model) {
    	
    	String message = "A user with the name of " + order.getUsername()  + " residing at " + order.getAddress() +  " has ordered " + order.getBook() + " priced at $" +order.getPrice() + ". Contact them at :" + order.getEmail() + " Payment method is : " + order.getMethod();
    	
    	System.out.println(message);
    	senderService.sendSimpleEmail("talaanbooks@gmail.com", "Talaan Order", message);
    	model.addAttribute("message", "Email sent successfully!");
    	
    
    	senderService.sendSimpleEmail(order.getEmail(), "Talaan Order", "Your order of " + order.getBook() + " has been received, a person from Talaan would contact you as soon as possible, Have a great day!");
    	model.addAttribute("message", "Email sent successfully!");
    	
       
    }
    
}
		
  
    	




    
        
        
        
            
		 
    	
   
