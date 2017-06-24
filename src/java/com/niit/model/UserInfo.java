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
public class UserInfo {
    String loginid, fname,lname,email,pass, gender,mob,loca;
    int userId;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    public String getLoginid() {
        return loginid;
    }

    public void setLoginid(String loginid) {
        this.loginid = loginid;
    }
    private String zip;
    String add;
    String usertype;

    public UserInfo(String loginid, String fname, String lname, String email, String pass, String gender, String mob, String loca, String zip, String add, String usertype) {
        this.loginid = loginid;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.pass = pass;
        this.gender = gender;
        this.mob = mob;
        this.loca = loca;
        this.zip = zip;
        this.add = add;
        this.usertype = usertype;
    }

    @Override
    public String toString() {
        return "UserInfo{ "+"login="+ loginid + ",fname=" + fname + ", lname=" + lname + ", email=" + email + ", pass=" + pass + ", gender=" + gender + ", mob=" + mob + ", loca=" + loca + ", zip=" + zip + ", add=" + add + ", usertype=" + usertype + '}';
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }

    public String getLoca() {
        return loca;
    }

    public void setLoca(String loca) {
        this.loca = loca;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

   
    
    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }
    
    
}