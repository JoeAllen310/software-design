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
         <link href='http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
        <link href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/css/datepicker.min.css' rel='stylesheet' type='text/css'>
        <link href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/css/bootstrap-switch.css' rel='stylesheet' type='text/css'>
        <link href='http://davidstutz.github.io/bootstrap-multiselect/css/bootstrap-multiselect.css' rel='stylesheet' type='text/css'>
        <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js' type='text/javascript'></script>
        <script src='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min.js' type='text/javascript'></script>
        <script src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js' type='text/javascript'></script>
        <script src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/js/bootstrap-switch.min.js' type='text/javascript'></script>
        <script src='http://davidstutz.github.io/bootstrap-multiselect/js/bootstrap-multiselect.js' type='text/javascript'></script>
        
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Boom Boom Hotel</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/mobile.css">
        <script src="js/mobile.js" type="text/javascript"></script>
        
        
        
        
        
        
        
        
        
        
        
        
         <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
       
        
         <script>
  $( function() {
    $( "#datepicker" ).datepicker();
    $( "#datepicker2" ).datepicker();
    
$("#number").keydown(function(e) {
    var curchr = this.value.length;
    var curval = $(this).val();
    if (curchr == 3) {
        if( e.keyCode!=8 ){
            $(this).val("(" + curval + ")" + " ");
        }
    } else if (curchr == 9) {
        if( e.keyCode!=8 ){
            $(this).val(curval + "-");
        }
    }
    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105) && e.keyCode !=8 ) {
        e.preventDefault();
    }
});
 
 });
    </script>
        
       
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

                           <!-- <sql:setDataSource var="tony" driver="com.mysql.jdbc.Driver"
                                               url="jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull"
                                               user="root"  password="1234"/>
                            <sql:query dataSource="${tony}" var="result">
                                SELECT * from roomstable;
                            </sql:query> -->

                            <div class='container'>
                                <div class='panel panel-primary dialog-panel'>
                                    <div class='panel-heading'>
                                        <h5>Boom-Boom Room - Reservation</h5>
                                    </div>
                                    <div class='panel-body'>
                                        <form class='form-horizontal' role='form'>
                                            <div class='form-group'>
                                                <label class='control-label col-md-2 col-md-offset-2' for='id_accomodation'>BB-R Form</label>
                                                <div class='col-md-2'>
                                                   
                                                </div>
                                            </div>
                                            <div class='form-group'>
                                                <label class='control-label col-md-2 col-md-offset-2' for='id_title'>Name</label>
                                                <div class='col-md-8'>
                                                    <div class='col-md-2'>
                                                        <div class='form-group internal'>
                                                            <select class='form-control' id='id_title'>
                                                                <option>Mr</option>
                                                                <option>Ms</option>
                                                                <option>Mrs</option>
                                                                <option>Miss</option>
                                                                <option>Dr</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class='col-md-3 indent-small'>
                                                        <div class='form-group internal'>
                                                            <input class='form-control' name="first_name" placeholder='First Name' type='text'>
                                                        </div>
                                                    </div>
                                                    <div class='col-md-3 indent-small'>
                                                        <div class='form-group internal'>
                                                            <input class='form-control' name="last_name" placeholder='Last Name' type='text'>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class='form-group'>
                                                <label class='control-label col-md-2 col-md-offset-2' for='id_adults'>People</label>
                                                <div class='col-md-8'>
                                                    <div class='col-md-2'>
                                                        <div class='form-group internal'>
                                                            <input maxlength="1" class='form-control col-md-8' name="num_people" placeholder='# of People' type='text'>
                                                        </div>
                                                    </div>
                                                    <div class='col-md-3 indent-small'>
                                                       
                                                    </div>
                                                   
                                                </div>
                                            </div>
                                            <div class='form-group'>
                                                <label class='control-label col-md-2 col-md-offset-2' for='id_email'>Contact</label>
                                                <div class='col-md-6'>
                                                    <div class='form-group'>
                                                        <div class='col-md-11'>
                                                            <input class='form-control' name="email" placeholder='E-mail' type='text'>
                                                        </div>
                                                    </div>
                                                    <div class='form-group internal'>
                                                        <div class='col-md-11'>
                                                            <input  maxlength="14" id="number" class='form-control'  name="phone" placeholder='Phone: (xxx) xxx xxxx' type='text'>
                                                            
                                                            
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class='form-group'>
                                                <label class='control-label col-md-2 col-md-offset-2' for='id_checkin'>Check-In</label>
                                                <div class='col-md-8'>
                                                    <div class='col-md-3'>
                                                        <div class='form-group internal input-group'>
                                                            
                                                            <input type="text" id="datepicker" class='form-control datepicker' name="checkin">
                                                            
                                                            
                                                            <span class='input-group-addon'>
                                                                <i class='glyphicon glyphicon-calendar'></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <label class='control-label col-md-2' for='id_checkout'>Checkout</label>
                                                    <div class='col-md-3'>
                                                        <div class='form-group internal input-group'>
                                                            
                                                            <input  type="text" id="datepicker2" class='form-control datepicker' name="checkout" >
                                                            
                                                            <span class='input-group-addon'>
                                                                <i class='glyphicon glyphicon-calendar'></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class='form-group'>
                                                <label class='control-label col-md-2 col-md-offset-2' for='id_equipment'>Room Number</label>
                                                <div class='col-md-8'>
                                                    <div class='col-md-3'>
                                                        <div class='form-group internal'>
                                                            <div class='form-group internal'>
                                                                <input maxlength="4" class='form-control col-md-8' name="section_number" placeholder='Range: 3000 - 3020' type='text'>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    <div class='col-md-9'>
                                                        <div class='form-group internal'>
                                                            <label class='control-label col-md-3' for='id_slide'>Slide-outs</label>
                                                            <div class='make-switch' data-off-label='NO' data-on-label='YES' id='id_slide_switch'>
                                                                <input id='id_slide' type='checkbox' value='chk_hydro'>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class='form-group'>
                                                <label class='control-label col-md-2 col-md-offset-2' for='id_service'> Credit Card Number</label>
                                                <div class='col-md-8'>
                                                    
                                                    
                                                    <div class='form-group internal'>
                                                            <input class='form-control col-md-8' style="width: 250px" name="credit_card" placeholder='2525 2525 2525 2525' type='text'>
                                                        </div>
                                                    
                                                    
                                                </div>
                                            </div>
                                            <div class='form-group'>
                                                <label class='control-label col-md-2 col-md-offset-2' for='id_pets'>Expired Date</label>
                                                <div class='col-md-8'>
                              
                                                     <div class='form-group internal'>
                                                            <input maxlength="5" class='form-control col-md-8' style="width: 75px" name="expired_date" placeholder=' 02/18 ' type='text'>
                                                        </div>
                                                    
                                          
                                                </div>
                                            </div>
                                            <div class='form-group'>
                                                <div class='col-md-offset-4 col-md-3' >
                                                    <button class='btn-lg btn-primary' type='submit' formaction="inserterdataBBR.jsp">Request Reservation </button>
                                                </div>
                                                <div class='col-md-3'>
                                                    <button class='btn-lg btn-danger' style='float:right' type='submit'>Cancel</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div> 
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
                        <p>&copy; 2016 BY BOOM BOOM ROOM | ALL RIGHTS RESERVED</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
