<%-- 
    Document   : admin
    Created on : 30-Mar-2024, 10:34:05 am
    Author     : DELL
--%>

<%@page import="main.data"%>
<%@page import="java.sql.*"%>
<%@page import="main.Query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin page</title>
        <style>
              body{
                margin: 0;
                padding: 0;
                background-image: url("backgroundimg.jpg");
                background-size: cover;
                background-repeat:no-repeat;
                display: flex;
                flex-direction: column;
                background-color: white;
                align-items: center;
                justify-content: center;
                background-position: center;
               height: 100%;
                color: white;
/*                position: fixed;*/
            } 
            table{
                position: absolute;
                top:0px;
                border: 1px solid yellow;
                width: 100%;
                color: yellow;
                font-size: 20px;
                box-sizing: border-box;
            }
            td{
                width: 20vh;
                 border: 2px solid white;
            }
            .hedding{
                color: red;
                font-size: 20px;
                
            }
            .admin{
                text-align: center;
/*                padding: 50px;*/
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                border: 0px solid white;
/*                background-color: white;*/
               backdrop-filter:blur(6px);
               color: white;
                width: 80%;
                height: 450px;
                margin-bottom: 50px;
                overflow:auto;
            }
            a{
                text-decoration: none;
                color: black;
            }
            .bt1{
                background-color: greenyellow;
            }
             .bt2{
                background-color: red; 
            }
            #backlink{
                color: white;
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <h1>Welcome to Admin Page</h1>
 
        <div class="admin">
            <table>
                <tr class="hedding">
                    <td>ID</td>
                    <td>OWNER NAME</td>
                    <td>CAR NAME</td>
                    <td>CAR NUMBER</td>
                    <td>CAR COST PRICE</td>
                    <td>DATE AND TIME</td>
                <td colspan="2">Action</td>
                </tr>
                
                <%
                    data co=new data();
                    Query qu=new Query();
                    try{
                    
                     Class.forName("com.mysql.cj.jdbc.Driver");
                     Connection con=co.getcon();
                                        Statement st=con.createStatement();
                     ResultSet rs =st.executeQuery(qu.select);
                     
                     while(rs.next()){
                     %>
                     <tr>
                           <td><%=rs.getInt("id")%>
                           <td><%=rs.getString("owner_name")%></td>
                           <td><%=rs.getString("car_name")%></td>
                           <td><%=rs.getString("car_number")%></td>
                           <td><%=rs.getInt("car_costprice")%></td>
                           <td><%=rs.getString("date")%></td>
                           <td><a href="updatepage.jsp?id=<%=rs.getInt("id")%>"><button class="bt1">Update</a></button>
                            </td>
                            <td><form action="Delete?id=<%=rs.getInt("id")%>" method="post">
                                    <button  class="bt2">Delete</button>
                                </form></td>
            </tr>
            <% }//while loop close
}catch(Exception e){

}
 %>            
            </table>  
        </div>
            <div>
               <a href="index.html" id="backlink">Back To Home</a></div>
    </body>
</html>
