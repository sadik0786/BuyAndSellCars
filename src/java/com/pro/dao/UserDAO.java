/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.niit.model.UserInfo;

/**
 *
 * @author Sadik
 */
public interface UserDAO {
    boolean createUser(UserInfo u);
    UserInfo getUserById(int userId);
    boolean updateUser(String email,String password);
    boolean deleteUser(int userId);
    UserInfo getUserByLoginId(String loginId);
  
   
}
