package com.niit.dao;

import java.util.List;

import com.niit.model.User;

public interface UserDao {

	public void addUser(User user);

	public User getUsersById(String userId);

	/*public List<Users> getAllUser();

	public Users getUserByUsername(String userName)
	
*/
}