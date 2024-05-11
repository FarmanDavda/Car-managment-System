/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;
import java.sql.*;
public class Showdata {
    public static String showdata(){
     Query qu=new Query();
     data co=new data();
     try{
     Connection con=co.getcon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery(qu.select);
     while(rs.next()){
     int id=rs.getInt("id");
     String ownername=rs.getString("owner_name");
     String carname=rs.getString("car_name");
     String carno=rs.getString("car_number");
     int price=rs.getInt("car_costprice");
     String date=rs.getString("date");
     con.close();
     st.close();
     rs.close();
     return ownername;
     }
     }catch(Exception e){System.out.println(e);}
     return null;
    }
    
}
