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
                 margin:0 auto;
             
            }
  

            th, td {
                text-align: center;
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





            .ResereBtn {
                -moz-box-shadow: 3px 4px 0px 0px #1564ad;
                -webkit-box-shadow: 3px 4px 0px 0px #1564ad;
                box-shadow: 3px 4px 0px 0px #1564ad;
                background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5));
                background:-moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
                background:-webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
                background:-o-linear-gradient(top, #79bbff 5%, #378de5 100%);
                background:-ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
                background:linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5',GradientType=0);
                background-color:#79bbff;
                -moz-border-radius:20px;
                -webkit-border-radius:20px;
                border-radius:20px;
                border:2px solid #337bc4;
                display:inline-block;
                cursor:pointer;
                color:#ffffff;
                font-family:Verdana;
                font-size:17px;
                font-weight:bold;
                padding:15px 22px;
                text-decoration:none;
                text-shadow:0px 1px 0px #528ecc;
            }
            .ResereBtn:hover {
                background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5), color-stop(1, #79bbff));
                background:-moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
                background:-webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
                background:-o-linear-gradient(top, #378de5 5%, #79bbff 100%);
                background:-ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
                background:linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5', endColorstr='#79bbff',GradientType=0);
                background-color:#378de5;
            }
            .ResereBtn:active {
                position:relative;
                top:1px;
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
            <div id="bodybuttons" class="home2" align="center">
                <div class="header2" align="center">
                    <div align="center">
                        <div  align="center" class="buttonHolder">


                            <sql:setDataSource var="tony" driver="com.mysql.jdbc.Driver"
                                               url="jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull"
                                               user="root"  password="1234"/>

                            <sql:query dataSource="${tony}" var="result">
                                SELECT * from roomstable;
                            </sql:query>

                            <table border="1" width="25%" align="center" class ="imagetable">
                                <tr>
                                    <th>Section # </th>
                                    <th>ID of Rooms</th>

                                    <th>Room Type</th>
                                    <th>Status</th>
                                    <th>Price</th>
                                </tr>
                                <c:forEach var="row" items="${result.rows}">
                                    <tr>
                                        <td><c:out value="${row.SectionNumber}"/></td>
                                        <td><c:out value="${row.identifier}"/></td>
                                        <td><c:out value="${row.RoomType}"/></td>
                                        <td><c:out value="${row.Status}"/></td>
                                        <td><c:out value="${row.Price}"/></td>
                                    </tr>
                                </c:forEach>
                            </table>

                        </div>

                        <ul>



                        </ul>
                           <div style="text-align: center">
                        <a href="reserveForm.jsp" class="ResereBtn">Reserving Procedure</a>  
                           </div>


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
