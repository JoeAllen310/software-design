<%-- 
    Document   : projects
    Created on : Nov 23, 2016, 2:53:56 AM
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
            .oneP { 
	 position: relative; 
	left: -40px;
}
            
            
        </style>
    </head>
    <body>
        <div id="page">
            <div id="header">
                <div>
                    <a href="index.jsp" class="logo"><img src="images/logo.png" alt=""></a>
                    <ul id="navigation">
                        <li>
                            <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="about.jsp">About</a>
                        </li>
                        <li class="menu selected">
                            <a href="projects.jsp">Rooms</a>

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
            <div id="body">
                <div class="header">
                    <div>
                        <h1 style="color:white">Prestige Rooms</h1>
                        <ul style="alignment-adjust: left">
                            <li>
                                <a class="oneP"><img src="images/Single Bed.jpg"></a>
                                <div>

                                    <h1><strong>Single Bed</strong> </h1>
                                    <h4 style="text-align: right; color: white "> single bed description</h4>
                                    <p style="text-align: right">This 610-square-foot room features modern décor and one 
                                        king bed. The bedroom is separated from the living room by telescoping doors. Both 
                                        the bedroom and living room have flat-screen plasma televisions. The living room also
                                        boasts a stylish sofa and chair along with modern art. There is a desk and chair as 
                                        well. The Boom Boom Hotel One Bedroom has a small kitchenette with microwave, Sub-Zero mini-bar
                                        stocked with treats and a sink. </p> 

                                </div>
                            </li>
                            <li>
                                <a class="oneP"><img src="images/double bed.jpg"></a>
                                <div>
                                    <h1><strong>Double Bed</strong></h1>
                                    <h4 style="text-align: right; color:white"> Double Bed  </h4>
                                    <p style="text-align: right; color: white;">   This 460-square-foot room features 
                                        modern décor and two queen beds. This room features a flat-screen plasma 
                                        television. The living area also boasts an armchair along with modern art.
                                        There is a desk and chair as well. The in-room technology allows guests to 
                                        program room temperatures, lighting and music and control it all with a remote.</p>

                                </div>
                            </li>
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
