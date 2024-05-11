<%-- 
    Document   : index
    Created on : 28-Mar-2024, 9:47:50 am
    Author     : DELL
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                overflow-y: hidden;
            } 
            nav{
                display: flex;
                align-items:center;
                justify-content:space-between;
                background-color: blue;
                width: 100%;
                height: 80px;
                margin-right: 0;
                padding: 0px;
                position: relative;
            }
            img{
                margin-left: 10px;
                width:35vh;  
            }
            button{
                margin-right: 20px; 
                width: 70px;
                height: 30px;
            }
            button:hover{
                background-color: darkgray;
                color: white;
            }
            h1{
/*                background-image:linear-gradient(red,blue,yellow);*/
/*               background-color: transparent;*/
               font-size: 30px;
               font-style: italic;
               align-items: center;
               text-align: center;
/*               border: 2px solid;*/
               width: 80%;
               color: white;
            }
            form{
              display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                border: 2px solid white;
/*                background-color: white;*/
               backdrop-filter:blur(6px);
               color: white;
                width: 35%;
                height: 70%;
                border-radius: 30px;
                margin-bottom: 50px;
            }
             .button{
                display: flex;
                color: black;
/*                border: 2px solid white;*/
                width: 80%;
                margin: 20px;
                height: 30px;
                align-items: center;
                justify-content: center;
                wrap-after:auto;
                border-radius: 30px;
               
            }
            input{
                width: 100%;
                height: 30px;
                 background-color:white;
                border-radius: 30px;
                border-bottom:  0px solid white;
                text-align: center;
                border: none;
                padding: 0px;
            }
            .submit{
                margin-right: -10px;
                margin-bottom: 10px;
                width: 30%;
            }
            a{
                color: white;
                font-size: 20px;
                text-decoration: none;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <nav>
            <div>
               <img src="logo.png" alt="car images"/>
            </div>
            <div>
                
            </div>
            <div>
                
            </div>
            <div>
                <button>Sign Up</button>
                <button>Login</button>
            </div>
        </nav>
        
        
        
        
<!--        hedding-->
        <h1>WELCOME TO UNITY AUTO GAREJ</h1>
       
         <form action="datasend" method="post"> 
              <h2>Fill The Details</h2>
              <div class="button"><input type="text" name="tx1" placeholder="Enter Car Owner Name" required=""></div>
              <div class="button"><input type="text" name="tx2" placeholder="Enter Car Name" required=""></div>
              <div class="button"><input type="text" name="tx3" placeholder="Enter Car Number" required=""></div>
              <div class="button"><input type="text" name="tx4" placeholder="Enter Car Cost Price" required=""></div>
            <button class="submit">Submit</button> 
            <a href="index.html">Back To Home</a>
            <% String a= request.getParameter("error");
              if(a != null && a.equals("1")){ %>
              <p>Data Submitted Successfully ! </p>
             <%
                }
                %>
            
        </form>
      
        

<!--<div class="buttons">
    <div class="button"><a href="index.jsp">Add New Car Record</a></div>
    <div class="button"><a href="">Check Car Record</a></div>
    <div class="button"><a href="">Get Car Details</a></div>
    <div class="button"><a href="">Update Car Record</a></div>
    <div class="button"><a href="">Delete Car Record</a></div>
    <div class="button"><a href="">Exit</a></div>
</div>-->
    </body>
</html>
<!--    <h1>    <% String submit = request.getParameter("datasubmitted");
//                    <p> System.out.println(submit); </p>
                        %>    ans =<%=request.getParameter("sum")%> </h1>-->
   
