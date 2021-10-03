package com.website.helper;/*
 * Created by Vaishnavi Chaurasia
 * 29-Sep-21
 * 8:46 PM
 * VPS
 */


import java.sql.*;
public class ConnectionProvider {

    private static Connection connection;
    private final static String URL = "jdbc:mysql://localhost:3306/vps";
    private final static String username = "root";
    private final static String password = "7983909427";

    public static Connection getConnection() {

        try{

            if(connection == null) {
                // driver class load
                Class.forName("com.mysql.jdbc.Driver");

                connection = DriverManager
                        .getConnection(URL, username, password);
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return connection;
    }
}
