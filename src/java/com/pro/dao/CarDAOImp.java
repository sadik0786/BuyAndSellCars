/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.niit.model.CarInfo;
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
public class CarDAOImp implements CarDAO{
Connection con= DBconnection.getConnection();
    @Override
    public int addCar(CarInfo c) {
       int carid=0;
        try{
            PreparedStatement ps=con.prepareStatement("INSERT INTO CarDetails (carMake,carModel,variant,mfgYear,carFuel,owners,price,kms,mileage,branch) VALUES(?,?,?,?,?,?,?,?,?,?)");
//            ps.setInt(1, c.getCarId());
            ps.setString(1, c.getCarMake());
            ps.setString(2, c.getCarModel());
            ps.setString(3, c.getVariant());
            ps.setString(4, c.getMfgYear());
            ps.setString(5, c.getCarFuel());
            ps.setString(6, c.getOwners());
            ps.setInt(7, c.getPrice());
            ps.setInt(8, c.getKms());
            ps.setInt(9, c.getMileage());
            ps.setString(10,c.getBranch());
            ps.execute();
            System.out.println("succsefully car insert");
            ps = con.prepareStatement("select max(carid) as carid from  cardetails");
            ResultSet rs = ps.executeQuery();
            
            while(rs.next())
            {
              carid=rs.getInt(1);
            }
          
        }
    catch(SQLException e){
            e.getMessage();
            System.out.println(e.getMessage());
            System.out.println("\nNot inserted");
        }
          return carid;
        
    }

    @Override
    public CarInfo getCarById(int carId) {
       
      
  
        ResultSet rs=null;
   
        System.out.println(carId);
        
        try {
            rs = con.prepareStatement("select * from CarDetails where carid = "+ carId).executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(CarDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }
        CarInfo car=null;
        
        try {
            while(rs.next())
            {
                
                car = new CarInfo(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)
                    ,rs.getString(6),rs.getString(7),rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11));
                car.setCarId(carId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CarDAOImp.class.getName()).log(Level.SEVERE, null, ex);
        }

        return car;
    }

    @Override
    public boolean updateCar(int carId, CarInfo car) {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    boolean flag=false;
    try{
        PreparedStatement pstmt = con.prepareStatement("update CarDetails set carMake=?,carModel=?,variant=?,mfgYear=?,carFuel=?,owners=?,price=?,kms=?,mileage=?,branch=? where carId="+carId);
   
        pstmt.setString(1,car.getCarMake());
        pstmt.setString(2,car.getCarModel());
        pstmt.setString(3,car.getVariant());
        pstmt.setString(4,car.getMfgYear());
        pstmt.setString(5,car.getCarFuel());
        pstmt.setString(6,car.getOwners());
        pstmt.setInt(7,car.getPrice());
        pstmt.setInt(8,car.getKms());
        pstmt.setInt(9,car.getMileage());
        pstmt.setString(10,car.getBranch());
        pstmt.executeUpdate();
        System.out.println("succsefully car updeted");
        flag=true;
        System.out.println(carId);
    } catch (SQLException ex) {
        Logger.getLogger(CarDAOImp.class.getName()).log(Level.SEVERE,null,ex);
    }
    
    return flag;
    }

    @Override
    public boolean deleteCar(int carId) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    boolean flag=false;
    try{
        PreparedStatement pstmt = con.prepareStatement("DELETE FROM SADIK.CARDETAILS WHERE CARID =  ?");
        System.out.println("deleting carid = " + carId);
        pstmt.setInt(1, carId);
        System.out.println("no of row effected ="+pstmt.executeUpdate());
        
        flag=true;
        
    } catch (SQLException ex) {
        Logger.getLogger(CarDAOImp.class.getName()).log(Level.SEVERE,null,ex);
    }
    
    return flag;
    }

    @Override
    public List<CarInfo> getAllCars() {
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    List<CarInfo> carInfoList=new ArrayList<CarInfo>();
    try{
        PreparedStatement pstmt = con.prepareStatement("select * from CarDetails");
        ResultSet rs = pstmt.executeQuery();
        while(rs.next())
        {
           CarInfo carInfo = new CarInfo(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7),rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getString(11));
           carInfo.setCarId(rs.getInt(1));
           carInfoList.add(carInfo);
        }
    }catch (SQLException ex)  {
        Logger.getLogger(CarDAOImp.class.getName()).log(Level.SEVERE,null,ex);
        }
    return carInfoList; 
    
    }

   
    }
        

