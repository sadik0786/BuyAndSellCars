/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pro.dao;

import com.niit.model.CarInfo;
import java.util.List;

/**
 *
 * @author Sadik
 */
public interface CarDAO {

    int addCar(CarInfo carinfo);
    CarInfo getCarById(int carId);
    boolean updateCar(int carId,CarInfo car);
    boolean deleteCar(int carId);
    List<CarInfo> getAllCars();
}
