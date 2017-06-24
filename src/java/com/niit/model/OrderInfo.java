/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.model;

import java.sql.Date;

/**
 *
 * @author Sadik
 */
public class OrderInfo {
    private int orderId;
    private Date OrderDate;
    private int CarId;
    private  int UserId;
    private String Status;
    

 
    public OrderInfo(int CarId, int UserId, Date OrderDate,String Status) {
      //  this.orderId = orderId;
       this.CarId = CarId;
        this.UserId = UserId;
        this.OrderDate = OrderDate;
        this.Status = Status;
    }

   

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Date getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(Date OrderDate) {
        this.OrderDate = OrderDate;
    }

    public int getCarId() {
        return CarId;
    }

    public void setCarId(int CarId) {
        this.CarId = CarId;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

   
}
