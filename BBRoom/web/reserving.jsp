<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%-- 
    Document   : index
    Created on : Nov 12, 2016, 8:57:59 AM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Boom Boom Hotel</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/mobile.css">
        <script src="js/mobile.js" type="text/javascript"></script>
        <style>
            table {
                border-collapse: collapse;
                width: 50%;
                margin: 0;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}

            th {
                background-color: #4CAF50;
                color: white;
            }
            
table.imagetable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.imagetable th {
	background:#b5cfd2 url('cell-blue.jpg');
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
table.imagetable td {
	background:#dcddc0 url('cell-grey.jpg');
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}

        </style>
    </head>
    <body>
        <div id="page">
            <div id="header">
                <div>
                    <a href="index.jsp" class="logo"><img src="images/logo.png" alt=""></a>
                    <ul id="navigation">
                        <li class="selected">
                            <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="about.jsp">About</a>
                        </li>
                        <li class="menu">
                            <a href="projects.jsp"> Rooms</a>

                        </li>
                        <li class="menu">
                            <a href="blog.jsp">Suites</a>

                        </li>
                        <li>
                            <a href="contact.jsp">Contact</a>
                        </li>                        
                    </ul>
                </div>
            </div>
            <div id="bodybuttons" class="home2">
                <div class="header2">
                    <div>
                        <div class="buttonHolder">


                            <sql:setDataSource var="tony" driver="com.mysql.jdbc.Driver"
                                               url="jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull"
                                               user="root"  password="1234"/>

                            <sql:query dataSource="${tony}" var="result">
                                SELECT * from roomstable;
                            </sql:query>

                                
                                
                                

                                <form action="Login">
                                    First Name : <input type="text" name="name"><br>
                                    Last Name  : <input type="text" name="last"><br>
                                    Address : <input type="text" name="address"><br>
                                    Email  : <input type="text" name="email"><br>
                                    Phone Number : <input type="text" name="phone"><br>
                                    Check In  : <input type="text" name="checkin"><br>
                                    Check Out : <input type="text" name="checkout"><br>
                                    Number of People  : <input type="text" name="people"><br>
                                    Credit Card : <input type="text" name="card"><br>
                                    RoomNumber  : <input type="text" name="room"><br>
                                    <input type="submit" value="cancel">
                                </form>


                        </div>

                        <ul>



                        </ul>
                    </div>
                </div>


            </div>
            <div id="footer">
                <div class="connect">
                    <div>
                        <h1>FOLLOW US</h1>
                        <div>
                            <a href="http://facebook.com/go/facebook/" class="facebook">facebook</a>
                            <a href="http://twitter.com/go/twitter/" class="twitter">twitter</a>
                            <a href="http://pintrest.com/go/pinterest/" class="pinterest">pinterest</a>
                        </div>
                    </div>
                </div>
                <div class="footnote">
                    <div>
                        <p>&copy; 2016 BY BOOM BOOM  | ALL RIGHTS RESERVED</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
