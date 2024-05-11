/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;
import java.sql.*;
public class data {
 private static String url = "jdbc:mysql://localhost:3306/carsystem";
 private static String user = "root";
 private static String password = "farman@123";

    public static Connection getcon() throws ClassNotFoundException, SQLException {
   try{
   Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con = (Connection) DriverManager.getConnection(url, user, password);
//   System.out.println("Driver loaded Success Fully");
  return con;
   }catch(Exception e){
   System.out.println(e);
   }
     return null;
}
}
