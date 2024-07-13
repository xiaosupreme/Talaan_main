package com.Springproject.controller;

import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.mysql.cj.protocol.Resultset;

@Controller
public class AdminController {
	int adminlogcheck = 0;
	String usernameforclass = "";
	
	@RequestMapping(value = {"/","/logout"})
	public String returnIndex() {
		adminlogcheck =0;
		usernameforclass = "";
		return "userLogin";
	}
	
	
	
	@GetMapping("/index")
	public String index(Model model) {
		if(usernameforclass.equalsIgnoreCase(""))
			return "userLogin";
		else {
			model.addAttribute("username", usernameforclass);
			return "index";
		}
			
	}
	@GetMapping("/userloginvalidate")
	public String userlog(Model model) {
		
		return "userLogin";
	}
	@RequestMapping(value = "userloginvalidate", method = RequestMethod.POST)
	public String userlogin( @RequestParam("username") String username, @RequestParam("password") String pass,Model model) {
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			ResultSet rst = stmt.executeQuery("select * from users where username = '"+username+"' and password = '"+ pass+"' ;");
			if(rst.next()) {
				usernameforclass = rst.getString(2);
				return "redirect:/index";
				}
			else {
				model.addAttribute("message", "Invalid Username or Password");
				return "userLogin";
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "userLogin";
		
		
		
	}
	
	
	@GetMapping("/admin")
	public String adminlogin(Model model) {
		
		return "adminlogin";
	}
	@GetMapping("/adminhome")
	public String adminHome(Model model) {
		if(adminlogcheck!=0)
			return "adminHome";
		else
			return "redirect:/admin";
	}
	@GetMapping("/loginvalidate")
	public String adminlog(Model model) {
		
		return "adminlogin";
	}
	@RequestMapping(value = "loginvalidate", method = RequestMethod.POST)
	public String adminlogin( @RequestParam("username") String username, @RequestParam("password") String pass,Model model) {
		
		if(username.equalsIgnoreCase("Admin-Talaan") && pass.equalsIgnoreCase("RootPass")) {
			adminlogcheck=1;
			return "redirect:/adminhome";
			}
		else {
			model.addAttribute("message", "Invalid Username or Password");
			return "adminlogin";
		}
	}
	@GetMapping("/admin/genres")
	public String getgenre() {
		return "genres";
	}
	@RequestMapping(value = "admin/sendgenre",method = RequestMethod.GET)
	public String addgenretodb(@RequestParam("genrename") String genname)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			
			PreparedStatement pst = con.prepareStatement("insert into genres(name) values(?);");
			pst.setString(1,genname);
			int i = pst.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/admin/genres";
	}
	
	@GetMapping("/admin/genres/delete")
	public String removeGenreDb(@RequestParam("id") int id)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			
			PreparedStatement pst = con.prepareStatement("delete from genres where genreid = ? ;");
			pst.setInt(1, id);
			int i = pst.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/admin/genres";
	}
	
	@GetMapping("/admin/genres/update")
	public String updateGenreDb(@RequestParam("genreid") int id, @RequestParam("genrename") String genrename)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			
			PreparedStatement pst = con.prepareStatement("update genres set name = ? where genreid = ?");
			pst.setString(1, genrename);
			pst.setInt(2, id);
			int i = pst.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/admin/genres";
	}

	@GetMapping("/admin/books")
	public String getbook(Model model) {
		return "books";
	}
	@GetMapping("/admin/books/add")
	public String addbook(Model model) {
		return "booksAdd";
	}

	@GetMapping("/admin/books/update")
	public String updatebook(@RequestParam("pid") int id,Model model) {
		String ptitle,pauthor,ppublishyear,pdescription;
		int pid,pgenre,pprice,pquantity;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			Statement stmt2 = con.createStatement();
			ResultSet rst = stmt.executeQuery("select * from books where id = "+id+";");
			
			if(rst.next())
			{
			pid = rst.getInt(1);
			ptitle = rst.getString(2);
			pauthor = rst.getString(3);
			ppublishyear = rst.getString(4);
		
			pgenre = rst.getInt(5);
			pquantity = rst.getInt(6);
			pprice =  rst.getInt(7);
			pdescription = rst.getString(8);
			model.addAttribute("pid",pid);
			model.addAttribute("ptitle",ptitle);
			model.addAttribute("pauthor",pauthor);
			model.addAttribute("ppublishyear",ppublishyear);
			
			ResultSet rst2 = stmt.executeQuery("select * from genres where genreid = "+pgenre+";");
			if(rst2.next())
			{
				model.addAttribute("pgenre",rst2.getString(2));
			}
			model.addAttribute("pquantity",pquantity);
			model.addAttribute("pprice",pprice);
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "booksUpdate";
	}
	@RequestMapping(value = "admin/books/updateData",method=RequestMethod.POST)
	public String updatebooktodb(@RequestParam("id") int id, @RequestParam("price") int price, @RequestParam("quantity") int quantity ) 
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			
			PreparedStatement pst = con.prepareStatement("update books set quantity = ?,price = ? where id = ?;");
			
			pst.setInt(1, quantity);
			pst.setInt(2, price);
			
			pst.setInt(3, id);
			int i = pst.executeUpdate();			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/admin/books";
	}
	
	@GetMapping("/admin/books/delete")
	public String removeBookDb(@RequestParam("id") int id)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			
			
			PreparedStatement pst = con.prepareStatement("delete from books where id = ? ;");
			pst.setInt(1, id);
			int i = pst.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/admin/books";
	}
	
	@PostMapping("/admin/books")
	public String postbook() {
		return "redirect:/admin/genres";
	}
	@RequestMapping(value = "admin/books/sendData",method=RequestMethod.POST)
	public String addbooktodb(@RequestParam("title") String title, @RequestParam("author") String author, @RequestParam("publishyear") String publishyear, @RequestParam("genreid") String genid, @RequestParam("price") int price, @RequestParam("quantity") int quantity, @RequestParam("description") String description) {
		
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from genres where name = '"+genid+"';");
			if(rs.next())
			{
			int genreid = rs.getInt(1);
			
			PreparedStatement pst = con.prepareStatement("insert into books(title,author,publishyear,genreid,quantity,price,description) values(?,?,?,?,?,?,?);");
			pst.setString(1,title);
			pst.setString(2,author);
			pst.setString(3,publishyear);
			pst.setInt(4, genreid);
			pst.setInt(5, quantity);
			pst.setInt(6, price);
			pst.setString(7, description);
			int i = pst.executeUpdate();
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/admin/books";
	}
	
	@GetMapping("/admin/customers")
	public String getCustomerDetail() {
		return "displayCustomers";
	}
	
	
	@GetMapping("profileDisplay")
	public String profileDisplay(Model model) {
		String displayusername,displaypassword,displayemail,displayrole;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			ResultSet rst = stmt.executeQuery("select * from users where username = '"+usernameforclass+"';");
			
			if(rst.next())
			{
			int user_id = rst.getInt(1);
			displayusername = rst.getString(2);

			displaypassword = rst.getString(3);
			displayrole = rst.getString(4);
			displayemail = rst.getString(5);
			
			model.addAttribute("user_id",user_id);
			model.addAttribute("username",displayusername);
			model.addAttribute("password",displaypassword);
			model.addAttribute("role",displayrole);
			model.addAttribute("email",displayemail);
		
			
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		System.out.println("Hello");
		return "updateProfile";
	}
	
	@RequestMapping(value = "updateuser",method=RequestMethod.POST)
	public String updateUserProfile(@RequestParam("user_id") int user_id, @RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("email") String email) 
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			
			PreparedStatement pst = con.prepareStatement("update users set username= ?,email = ?,password= ? where user_id = ?;");
			
			pst.setString(1, username);
			pst.setString(2, email);
			pst.setString(3, password);
			
			pst.setInt(4, user_id);
			
			int i = pst.executeUpdate();
			usernameforclass = username;
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/index";
	}
	

}
