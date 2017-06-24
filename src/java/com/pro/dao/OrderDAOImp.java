/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.niit.model.CarInfo;
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
      try{
            PreparedStatement ps=con.prepareStatement("INSERT INTO OrderDetails (CarId,UserId,OrderDate) VALUES(?,?,?,?)");
         // ps.setInt(1, c.getOrderId());
            ps.setInt(1, order.getCarId());
            ps.setInt(2, order.getUserId());
             ps.setDate(3, order.getOrderDate());
            ps.setString(4,order.getStatus ());
            ps.executeUpdate();
            System.out.println("Order Details succsefully Insert! ");
        }
    catch(SQLException e){
            e.getMessage();
            System.out.println(e.getMessage());
            System.out.println("\nNot inserted");
        }
        
        return 1;
    }
    @Override
    public boolean confirmOrder(CarInfo carinfo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public OrderInfo getorderById(int orderId) {
        
      ResultSet rs=null;
   
        System.out.println(orderId);
        
        try {
            rs = con.prepareStatement("select * from OrderDetails where orderid = '"+ orderId +"'").executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }
        OrderInfo order=null;
        
        try {
            while(rs.next())
            {
                
             order = new OrderInfo(rs.getInt(2),rs.getInt(3),rs.getDate(4),rs.getString(5));
                    order.setOrderId(orderId); 
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }

       return order;
    }

    @Override
    public boolean cancleOrder(int orderId) {
      throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
 
    
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

  
    }

  
    

