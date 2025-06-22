package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    
    private static final String url = "jdbc:mysql://localhost:3306/lakrides";
    private static final String username = "root";
    private static final String password = "Thisum@123";

   
    private static DBConnect instance;
    
    
    private static Connection con;

    
    private DBConnect() {
        try {
            
            Class.forName("com.mysql.jdbc.Driver");

            
            con = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Database connection not successful");
        }
    }

   
    public static DBConnect getInstance() {
        if (instance == null) {
            
            instance = new DBConnect();
        }
        return instance;
    }

   
    public static Connection getConnection() {
        if (con == null) {
            
            instance = new DBConnect();
        }
        return con;
    }

    
    public void closeConnection() {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
         
}
        }
    }}