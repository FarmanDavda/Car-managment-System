/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;
import java.sql.*;

public class update {
     public static String dataupdate(int id ,String ownername,String carname,String carno,int price) throws ClassNotFoundException{
   Query qu=new Query();
   data co=new data();
   
   try{
   Connection con=co.getcon();
   PreparedStatement prst=con.prepareStatement(qu.update);
   prst.setString(1,ownername);
   prst.setString(2,carname);
   prst.setString(3,carno);
   prst.setInt(4,price);
   prst.setInt(5,id);
   prst.execute();
   con.close();
   prst.close();
   return "1";
           }catch(Exception e){ System.out.println(e);}
   return "0";
    }
}
