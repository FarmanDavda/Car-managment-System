/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;
import java.sql.*;
public class deleteclass {
     public static String datadelete(int id) throws ClassNotFoundException{
   Query qu=new Query();
   data co=new data();
   Delete delete=new Delete();
   
   try{
   Connection con=co.getcon();
   PreparedStatement prst=con.prepareStatement(qu.delete);
   prst.setInt(1,id);
   prst.execute();
   con.close();
   prst.close();
   return "1";
           }catch(Exception e){ System.out.println(e);}
   return "0";
    }
    
}
