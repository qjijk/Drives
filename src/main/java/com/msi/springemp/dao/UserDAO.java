package com.msi.springemp.dao;


import com.msi.springemp.pojo.User;

import java.util.List;

public interface UserDAO {
	public User findByName(String username) throws Exception;
	
	public int findByEmail(String email) throws Exception;

	public List<User> findAllUser() throws Exception;

	public int findByUser(String user) throws Exception;
	
	public void addUser(User user) throws Exception;
}
