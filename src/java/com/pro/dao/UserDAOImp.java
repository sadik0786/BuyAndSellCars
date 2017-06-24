/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.niit.model.UserInfo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sadik
 */
public class UserDAOImp implements UserDAO{
    Connection con= DBconnection.getConnection();
    @Override
    public boolean createUser(UserInfo u) {
        boolean f=false;
        try{
            PreparedStatement ps=con.prepareStatement("INSERT INTO userinfo (loginid,fname,lname,email,password,gender,mobileno,location,zipcode,address,usertype) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, u.getLoginid());
            ps.setString(2, u.getFname());
            ps.setString(3, u.getLname());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getPass());
            ps.setString(6, u.getGender());
            ps.setString(7, u.getMob());
            ps.setString(8, u.getLoca());
            ps.setString(9, u.getZip());
            ps.setString(10, u.getAdd());
            ps.setString(11, u.getUsertype());
          
            ps.execute();
            System.out.println("succsefully insert");
              
            
        }
        catch(SQLException e){
            e.getMessage();
            System.out.println(e.getMessage());
            System.out.println("\nNot inserted");
        }
        
        return f;
    }

    @Override
    public UserInfo getUserById(int userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


    @Override
    public boolean deleteUser(int userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public UserInfo getUserByLoginId(String loginId) {
    //    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
     ResultSet rs=null;
        System.out.println(loginId);
        try {
            rs = con.prepareStatement("select * from userinfo where loginid = '"+ loginId +"'").executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }
        UserInfo user=null;
        try {
            while(rs.next())
            {
                
                user = new UserInfo(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)
                    ,rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12));
                user.setUserId(rs.getInt(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }

        return user;
    }

    @Override
    public boolean updateUser(String email, String password) {
        boolean f=false;
        try{
            
            PreparedStatement ps=con.prepareStatement("UPDATE SADIK.USERINFO SET PASSWORD = ? WHERE EMAIL = ?" +
"");
            ps.setString(1, password.trim());
            ps.setString(2, email.trim());
            int a = ps.executeUpdate();
            System.out.println("no of row effected = "+a);
            f=true;
        }
        catch(Exception e){
            System.out.println("Exceptionname "+e);
            System.out.println(e.getMessage());
        }
        return f;
    }
    
    }
    
    

