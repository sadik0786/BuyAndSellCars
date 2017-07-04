/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.controler;

import com.pro.dao.OrderDAO;
import com.pro.dao.OrderDAOImp;

/**
 *
 * @author Sadik
 */
public class TimerClass implements Runnable{
    long orderTime=0;
    int orderId;
    OrderDAO orderDAO;
    
    public TimerClass(long orderTime, int orderId) {
        this.orderTime=orderTime;
        this.orderId=orderId;
    }
    
    @Override
    public void run() {
        System.out.println("Order with Order ID : " + orderId + " Placed at " + orderTime/1000*60);
        while(true){
            long timeDiff = System.currentTimeMillis() - orderTime;
            orderDAO = new OrderDAOImp();
            if(orderDAO.getorderById(orderId).getStatus().equals("Pending")){
                if(timeDiff/(1000*60)>=1)
                {
                    orderDAO.cancleOrder(orderId);
                    System.out.println("ORDER WITH ID " + orderId + " cancelled as user did not confirm in 10 minutes");
                    if (orderDAO.TimeOut(orderId)) {
                        System.out.println("sucessfully cancles ");
                    }
                    else{
                        System.out.println("error while aauto cancleation");
                    }
                    //code for page change
                    break;
                }
                else{
                    System.out.println("Your Order Is Pending ");
                }
            }
            else{
                System.out.println("Order Confirmed");
                break;
            }
         }
    }
    
}
