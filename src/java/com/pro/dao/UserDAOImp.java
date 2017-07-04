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
    public String[] getUserById(String userId) {
        String s[]=new String[6];
        ResultSet rs=null;
        System.out.println("user id to retrive is "+userId);
        try {
            rs = con.prepareStatement("SELECT LOGINID,FNAME,LNAME,MOBILENO,EMAIL,ADDRESS FROM SADIK.USERINFO where loginid = '"+userId+"'").executeQuery();
            rs.next();
            System.out.println("Reteiived userID is "+rs.getString(1));
            for (int i = 0; i < 6; i++) {
                s[i]=rs.getString(i+1);
            }
        } catch (SQLException ex) {
            System.out.println("Exception hua");
            System.out.println(ex.getMessage());
        }
        return s;
    }


    @Override
    public UserInfo getUserByLoginId(String loginId) {
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
            
              PreparedStatement ps=con.prepareStatement("UPDATE SADIK.USERINFO SET PASSWORD = ? WHERE EMAIL = ?" + "");
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

    @Override
    public boolean updateUser(String lid, String fname, String lname, String mobile, String email, String addr) {
        boolean f=false;
        try{
            System.out.println(fname+" "+lid+" "+lname);
            PreparedStatement ps=con.prepareStatement("UPDATE SADIK.USERINFO SET  FNAME = ?, LNAME = ?,MOBILEno = ?,EMAIL = ?,ADDRESS = ? WHERE LOGINID = '" +lid+ "'");
            ps.setString(1, fname.trim());
            ps.setString(2, lname.trim());
            ps.setString(3, mobile.trim());
            ps.setString(4, email.trim());
            ps.setString(5, addr.trim());
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

    @Override
    public boolean cancel(String orderId) {
       try {
            PreparedStatement ps=con.prepareStatement("update orderdetails set status='Cancle' where orderid = " + orderId);
            if(ps.executeUpdate()!=0)
            {
                System.out.println("Order Cancelled");
                
                return true;
            }
            else{
                System.out.println("else of cancle condition");
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }
       return false;
    }

    @Override
    public boolean accept(String orderId) {
    
       try {
            PreparedStatement ps=con.prepareStatement("update orderdetails set status='Accepted' where orderid = " + orderId);
            if(ps.executeUpdate()!=0)
            {
                System.out.println("Order Accepted");
                
                return true;
            }
            else{
                System.out.println("Error while accepting");
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }
       return false;
    }
    }

   
    
    

