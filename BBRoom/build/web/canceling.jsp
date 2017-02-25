<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%-- 
    Document   : buttons
    Created on : Nov 23, 2016, 3:02:02 AM
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
    </head>
    <body>

        <%

            //       String sql = "select mynewdatabase from customer where email=? and sectionNumber=?";

        %>

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







                        <form name="cancelForm" action="login.jsp">

                            <div class="login-page">
                                <div class="form">

                                    <form class="login-form">
                                        <h3> Login to Cancel Reservation</h3>
                                        <input name="email" type="email" placeholder="e-mail"/>
                                        <input name="password" type="text" placeholder="Section Number: 3000-3020"/>
                                        <button>login</button>
                                        <p class="message">No reservation? <a href="rooms.jsp">Make a reservation</a></p>
                                    </form>
                                </div>
                            </div>

                        </form>




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