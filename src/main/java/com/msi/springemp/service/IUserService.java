package com.msi.springemp.service;



public interface IUserService {
    public boolean login(String username, String password) throws Exception;
    public boolean a(String username, String password) throws Exception;

    public int checkEmailExist(String email) throws Exception;

    public int checkUserExist(String user) throws Exception;

    //public User findUserByEmail(String email);
}
