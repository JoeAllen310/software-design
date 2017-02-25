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


        <style type="text/css">

            .header2 table{
                alignment-adjust: middle;
                padding-top: 50px;
                padding-left: 500px;
                padding-right: 500px;

            }


            input {
                color: white;
                background-color: #ab000b;
                font-weight:bold;
                font-family:Arial;
                text-align: center;
                height: 50px;
                width: 150px;
                border-width: 3px; 
                border-style: outset;

            }

            table th{
                line-height: 40px;
                font-size: 35px
            }

            .header2 img{
                padding-top: 25px;

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
            <div  id="bodybuttons" class="home2">
                <div  class="header2">
                    <div>



                        <table class="table"  style="text-align: center" border ="1" width =500px>

                            <th colspan="2"> <h1 style="color: white">Reservation</h1></th>

                            <tr>
                                <td> <div class="buttonHolder"> </div>
                                    <form  ACTION="rooms.jsp">
                                        <input value="Reserve Procedure" title="Reserve" name="ReserveButton" type="submit" id="btn_i">
                                    </form>
                                </td>
                                <td>

                                    <form  ACTION="canceling.jsp">
                                        <input value="Cancel Reservation" title="CancelReserve" name ="CancelButton " type="submit" id="btn_s"> 
                                    </form>                                              
                                </td> 
                            </tr>

                        </table>


                        <img src="http://www.discoverlosangeles.com/sites/default/files/styles/listography_image/public/media/Restaurants/nobu-malibu-ocean-view.jpg?itok=AhBr6ZAl
                             " alt="Ocean View" style="width: 1000px; height: 400px">   

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