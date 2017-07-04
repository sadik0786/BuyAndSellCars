/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.niit.model.OrderInfo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sadik
 */
public class OrderDAOImp implements OrderDAO{

 
    Connection con= DBconnection.getConnection();
    
    @Override
        public int addOrder(OrderInfo order) {
        boolean f=false;
        int orderid=0;
      try{
            PreparedStatement ps=con.prepareStatement("INSERT INTO OrderDetails (CarId,UserId,OrderDate,Status) VALUES(?,?,?,?)");
         // ps.setInt(1, c.getOrderId());
            ps.setInt(1, order.getCarId());
            ps.setInt(2, order.getUserId());
             ps.setDate(3, order.getOrderDate());
            ps.setString(4,order.getStatus ());
            ps.executeUpdate();
            System.out.println("Order Details succsefully Insert! ");
             ps = con.prepareStatement("select max(orderid) as orderid from  orderdetails");
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
              orderid=rs.getInt(1);
            }
        }
    catch(SQLException e){
            e.getMessage();
            System.out.println(e.getMessage());
            System.out.println("\nNot inserted");
        }
        
        return orderid;
    }
    @Override
    public boolean confirmOrder(int carId) {
       try {
            
            PreparedStatement ps=con.prepareStatement("UPDATE SADIK.ORDERDETAILS SET STATUS = 'Confirm' WHERE CARID = ? and Status='Pending'" +"");
            ps.setInt(1, carId);
            int r = ps.executeUpdate();
            System.out.println("r is "+r);
            if(r!=0)
            {
                System.out.println("Order Confirmed");
                return true;
            }
            else{
                System.out.println("Else of confirm condition");
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("execption msg ");
            System.out.println(ex.getMessage());
        }
       return false;
         
    
    }

    @Override
    public OrderInfo getorderById(int orderId) {
        
      ResultSet rs=null;
   
        System.out.println(orderId);
        
        try {
            rs = con.prepareStatement("select * from OrderDetails where orderid = "+ orderId ).executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }
        OrderInfo order=null;
        
        try {
            while(rs.next())
            {
                
             order = new OrderInfo(rs.getInt(2),rs.getInt(3),rs.getDate(4),rs.getString(5));
             order.setOrderId(orderId); 
             order.setOrderId(rs.getInt(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("reutrn order is "+order.getStatus());
       return order;
    }

    @Override
    public boolean cancleOrder(int orderId) {
        try {
            PreparedStatement ps=con.prepareStatement("update orderdetails set status='Cancel' where orderid = " + orderId);
            if(ps.executeUpdate()==1)
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
    public List<OrderInfo> getAllOrders() {
     //   throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    List<OrderInfo> orderInfoList=new ArrayList<OrderInfo>();
    try{
        PreparedStatement pstmt = con.prepareStatement("select * from OrderDetails");
        ResultSet rs = pstmt.executeQuery();
        while(rs.next())
        {
          OrderInfo orderInfo = new OrderInfo(rs.getInt(2),rs.getInt(3),rs.getDate(4),rs.getString(5));
          orderInfo.setOrderId(rs.getInt(1));
           orderInfoList.add(orderInfo);
        }
    }catch (SQLException ex)  {
        Logger.getLogger(OrderDAOImp.class.getName()).log(Level.SEVERE,null,ex);
        }
    return orderInfoList; 
    
    }

    @Override
    public boolean TimeOut(int orderId) {
    try {
            System.out.println("orderId is "+orderId);
            PreparedStatement ps=con.prepareStatement("UPDATE SADIK.ORDERDETAILS SET STATUS = 'Cancle' WHERE ORDERID = ? ");
            ps.setInt(1, orderId);
            int r = ps.executeUpdate();
            System.out.println("row effected is "+r);
            if(r!=0)
            {
                System.out.println("Order Automaticly cancles ");
                return true;
            }
            else{
                System.out.println("Else ofAutomatic condition");
                return false;
            }
        } catch (SQLException ex) {
            System.out.println("execption msg ");
            System.out.println(ex.getMessage());
        }
       return false;
         
    }

  
    }

  
    

