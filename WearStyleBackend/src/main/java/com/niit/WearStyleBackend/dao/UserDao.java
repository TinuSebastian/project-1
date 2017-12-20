package com.niit.WearStyleBackend.dao;

import java.util.List;

import com.niit.WearStyleBackend.models.User;


public interface UserDao 
{
	public boolean insertUser(User user);
	public List<User> retrieveUser(); 
	public User getUser(String username);

}
