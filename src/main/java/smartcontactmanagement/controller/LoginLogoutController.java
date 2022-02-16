package smartcontactmanagement.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import smartcontactmanagement.dao.ContactDao;
import smartcontactmanagement.dao.UserDao;
import smartcontactmanagement.model.Contact;
import smartcontactmanagement.model.User;

@Controller
public class LoginLogoutController {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	ContactDao contactDao;
	
	

	// show login form
	@RequestMapping("/login")
	public String showLoginForm() {
		return "loginPage";
	}
	
	
	// Show register form 
	@RequestMapping("/register")
	public String showRegisterForm() {
		
		return "registerPage";
	}
	
	// handle login form
	@RequestMapping(path="/loginValidation", method=RequestMethod.POST)
	public String loginHandler(@RequestParam("userId") int id, @RequestParam("userEmail") String email, @RequestParam("userPassword") String password,Model m,HttpServletRequest request) {
		
		User user = this.userDao.getUser(id);
		if(user == null) {
			m.addAttribute("msg","Invalid Details! try again...");
		return "loginPage";
		}
		
		if(user.getUserEmail().equals(email) && user.getUserPassword().equals(password)) {
			
			m.addAttribute("msg","Login Successfully");
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", user);
			
			return "profilePage";
			
		}else {
			m.addAttribute("msg","Invalid Details! try again...");
			return "loginPage";
		}
		
	}
	
	// handle register form
	@RequestMapping(path="/registerHandler",method=RequestMethod.POST)
	public String registerHandler(@ModelAttribute User user) {
		
		this.userDao.createUser(user);
		return "loginPage";
	}
	
	@RequestMapping("/contacts/{userId}")
	public String viewContacts(@PathVariable("userId") int id, Model m) {
		
		 //List<Contact> allContact = this.contactDao.getAllContact();
		
		List<Contact> c = this.contactDao.getContactById(id);
		 
		 m.addAttribute("contacts",c);
		
		return "viewContacts";
	}
	
	
	// logout handler
	@RequestMapping("/logout")
	public String logoutHandler(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("currentUser");
		return "index";
	}
	
}
