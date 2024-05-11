/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;
import java.sql.*;
public class Query {
    
   
//          String insertquery = "INSERT INTO car(owner_name,car_name,car_number,car_costprice)VALUES("");";
public String insert="INSERT INTO car(owner_name,car_name,car_number,car_costprice)VALUES(?,?,?,?);";
public String select="SELECT * FROM CAR;";
public String update="update car set owner_name=?,car_name=?,car_number=?,car_costprice=? where id=?;";
public String delete="DELETE from car where id=?";
    
}
