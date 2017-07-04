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
    String[] getUserById(String userId);
    boolean updateUser(String email,String password);
    UserInfo getUserByLoginId(String loginId);
    boolean updateUser(String lid,String fname,String lname,String mobile,String email,String addr);
    boolean cancel(String orderId);
    boolean accept(String orderId);
   
}
