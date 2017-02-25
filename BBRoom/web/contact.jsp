<%-- 
    Document   : contact
    Created on : Nov 23, 2016, 2:53:08 AM
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
                        <li class="menu">
                            <a href="projects.jsp">Rooms</a>

                        </li>
                        <li class="menu">
                            <a href="blog.jsp">Suites</a>

                        </li>
                        <li class="selected">
                            <a href="contact.jsp">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="body">
                <div class="header">
                    <div class="contact">
                        <h1 style="color:white">Contact</h1>
                        <h2>DO NOT HESITATE TO CONTACT US</h2>

                        <form action="index.jsp">
                            <input type="text" name="Name" value="Name" onblur="this.value = !this.value ? 'Name' : this.value;" onfocus="this.select()" onclick="this.value = '';">
                            <input type="text" name="Email Address" value="Email Address" onblur="this.value = !this.value ? 'Email Address' : this.value;" onfocus="this.select()" onclick="this.value = '';">
                            <input type="text" name="Subject" value="Subject" onblur="this.value = !this.value ? 'Subject' : this.value;" onfocus="this.select()" onclick="this.value = '';">
                            <textarea name="message" cols="50" rows="7">Message</textarea>
                            <input type="submit" value="Send" id="submit">
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
