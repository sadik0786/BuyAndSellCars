/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit.model;

/**
 *
 * @author Sadik
 */
public class CarInfo {
    private int carId;
    private String carMake;
    private String carModel;
    private String variant;
    private String mfgYear;
    private String carFuel;
    private String owners;
    private int price;
    private int kms;
    private int mileage;
    private String branch;
    
    /**
     *
     * @param carMake
     * @param carModel
     * @param variant
     * @param mfgYear
     * @param carFuel
     * @param owners
     * @param price
     * @param kms
     * @param mileage
     */
    public CarInfo ( String carMake,String carModel,String variant,String mfgYear,String carFuel,String owners,int price,int kms,int mileage,String branch){
  //  this.carId = carId;
    this.carMake = carMake;
    this.carModel = carModel;
    this.variant = variant;
    this.mfgYear = mfgYear;
    this.carFuel = carFuel;
    this.owners = owners;
    this.price = price;
    this.kms = kms;
    this.mileage = mileage;
    this.branch = branch;
}

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public String getCarMake() {
        return carMake;
    }

    public void setCarMake(String carMake) {
        this.carMake = carMake;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getVariant() {
        return variant;
    }

    public void setVariant(String variant) {
        this.variant = variant;
    }

    public String getMfgYear() {
        return mfgYear;
    }

    public void setMfgYear(String mfgYear) {
        this.mfgYear = mfgYear;
    }

    public String getCarFuel() {
        return carFuel;
    }

    public void setCarFuel(String carFuel) {
        this.carFuel = carFuel;
    }

    public String getOwners() {
        return owners;
    }

    public void setOwners(String owners) {
        this.owners = owners;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getKms() {
        return kms;
    }

    public void setKms(int kms) {
        this.kms = kms;
    }

    public int getMileage() {
        return mileage;
    }

    public void setMileage(int mileage) {
        this.mileage = mileage;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    
    }
