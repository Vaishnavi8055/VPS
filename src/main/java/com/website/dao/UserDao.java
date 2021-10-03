package com.website.dao;/*
 * Created by Vaishnavi Chaurasia
 * 01-Oct-21
 * 8:25 PM
 * VPS
 */

import com.website.entities.User;

import java.sql.*;
public class UserDao {

    private Connection connection;

    public UserDao(Connection connection) {
        this.connection = connection;
    }

    // method to insert user to data base -

    public boolean saveUser(User user) {
        boolean check = false;
        try {

            String query = "insert into users(`name`,email,password,address) values (?,?,?,?)";
            PreparedStatement preparedStatement = this.connection.prepareStatement(query);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4,user.getAddress());


            preparedStatement.executeUpdate();
            check = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }


    // get user Info by email and password - Login

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "Select * from users where email = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet set = preparedStatement.executeQuery();

            if (set.next()) {

                user = new User();
                // data from db
                String name = set.getString("name");
                // set to user object
                user.setName(name);
                user.setId(set.getInt("Id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setRegDate(set.getTimestamp("regdate"));
                user.setProfile(set.getString("profile"));
                user.setProfile(set.getString("address"));
            }

        } catch (
                Exception e) {
            e.printStackTrace();
        }

        return user;
    }
}
