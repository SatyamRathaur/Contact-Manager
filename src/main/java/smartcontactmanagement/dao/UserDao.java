package smartcontactmanagement.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import smartcontactmanagement.model.User;

@Component
public class UserDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	// creating user in database
	@Transactional
	public void createUser(User user) {
		
		this.hibernateTemplate.save(user);
	}
	
	// getting user by userId
	public User getUser(int userId) {
		
		User user = this.hibernateTemplate.get(User.class, userId);
		return user;
	}
}
