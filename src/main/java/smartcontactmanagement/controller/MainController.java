package smartcontactmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import smartcontactmanagement.dao.ContactDao;
import smartcontactmanagement.model.Contact;

@Controller
public class MainController {
	
	@Autowired
	private ContactDao contactDao;
	
	@RequestMapping("/")
	public String showIndexPage() {
		return "index";
	}
	
	@RequestMapping(path="/loginHandler", method=RequestMethod.POST)
	public String index(@RequestParam("userId") int id, @RequestParam("userEmail") String email, @RequestParam("userPassword") String password, Model m) {
		
		 List<Contact> allContact = this.contactDao.getAllContact();
		 m.addAttribute("contacts",allContact);

		return "profilePage";
		
	}
	
	// add contact form
	@RequestMapping("/addContact")
	public String addContact(Model m) {
		
		m.addAttribute("title","Add Contact");
		return "add_contact_form";
	}
	
	
	// Handle form 
	@RequestMapping(path="/handleForm" , method=RequestMethod.POST)
	public String handleForm(@ModelAttribute Contact contact) {
		
		System.out.println(contact);
		
		this.contactDao.creatContact(contact);
		return "profilePage";
	}
	
	
	// Delete Handler 
	@RequestMapping("/deleteContact/{contactId}")
	public String deleteContact(@PathVariable("contactId") int id) {
		
		this.contactDao.deleteContact(id);

		return "profilePage";
	}
	
	
	//show update Handler form
	@RequestMapping("/updateContact/{contactId}")
	public String updateForm(@PathVariable("contactId") int id ,Model m) {

		Contact c = this.contactDao.getContact(id);
		m.addAttribute("contact",c);
		return "contact_update_form";
	}

	//  back handler for profile page(available on update contact page)
	@RequestMapping("/back")
	public String goBack() {
		
		return "profilePage";
	}
}
