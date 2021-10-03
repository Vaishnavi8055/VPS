package com.website.entities;/*
 * Created by Vaishnavi Chaurasia
 * 01-Oct-21
 * 8:16 PM
 * VPS
 */
import java.sql.*;
public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private Timestamp regDate;
    private String profile;
    private String address;

    public User(int id, String name, String email, String password, Timestamp regDate) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.regDate = regDate;
    }

    public User(){

    }

    public User(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.regDate = regDate;
    }

    public User(String name, String email, String password, String address) {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Timestamp getRegDate() {
        return regDate;
    }

    public void setRegDate(Timestamp regDate) {
        this.regDate = regDate;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
