package smartcontactmanagement.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import smartcontactmanagement.model.Contact;

@Component
public class ContactDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	
	// saving contact in database if not present else updating if present
	@Transactional
	public void creatContact(Contact contact) {
		
		this.hibernateTemplate.saveOrUpdate(contact);
	}
	
	// get all contact from database
	public List<Contact> getAllContact(){
		
		List<Contact> contacts = this.hibernateTemplate.loadAll(Contact.class);
		return contacts;
	}
	
	//get single contact by pId from database
	public Contact getContact(int id) {
		Contact c = this.hibernateTemplate.get(Contact.class, id);
		return c;
	}
	
	//delete a single contact from database
	@Transactional
	public void deleteContact(int id) {
		Contact c = this.hibernateTemplate.get(Contact.class, id);
		this.hibernateTemplate.delete(c);
	}
	
	
	// get contact  by userId
	
	public List<Contact> getContactById(int id){
		List<Contact> allContact = this.hibernateTemplate.loadAll(Contact.class);
		List<Contact> list = new ArrayList<Contact>();
		for(Contact c : allContact) {
			if(id == c.getuId()) {
				list.add(c);
			}
		}
		
		return list;
	}
}
