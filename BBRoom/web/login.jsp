<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%-- 
    Document   : login
    Created on : Dec 2, 2016, 6:26:54 AM
    Author     : Alvaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       	<%!
            // Code: so when the customer wants to cancel and
            // provides us with the info that we requested 
            //this code executes which will delete the record of the 
            // customer; therefore they will be deleted from our database.
            String custEmail;
            String custNumber;

        %>
        <%
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql = "select * from customer where email=? and roomNumber=?";
            String email = request.getParameter("email");             //html
            String sectionNumber = request.getParameter("password");  //html

            String one = email;
            String two = sectionNumber;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull", "root", "1234");

                if ((!(email.equals(null) || email.equals("")) && !(sectionNumber.equals(null) || sectionNumber.equals("")))) {

                    ps = con.prepareStatement(sql);
                    ps.setString(1, email);
                    ps.setString(2, sectionNumber);
                    rs = ps.executeQuery();

                    if (rs.next()) {
                        custEmail = rs.getString("Email");
                        custNumber = rs.getString("RoomNumber");
                        // String me= getString("Email");

                        if (email.equals(custEmail) && sectionNumber.equals(custNumber)) {

                            try {
                                // create the mysql database connection
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull", "root", "1234");

                                // create the mysql delete statement.
                                // i'm deleting the row where the id is "3", which corresponds to my
                                // "Barney Rubble" record.
                                String query = "delete from customer where Email = ? and RoomNumber = ?";
                                PreparedStatement preparedStmt = conn.prepareStatement(query);
                                preparedStmt.setString(1, one);
                                preparedStmt.setString(2, two);

                                try {

                                    String host = "jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull";
                                    String uName = "root";
                                    String uPass = "1234";

                                    Connection connn = DriverManager.getConnection(host, uName, uPass);

                                    Statement stmt = connn.createStatement();
                                    String SQL = "SELECT * FROM  roomstable"; // Workers is the name of the table.
                                    ResultSet rs2 = stmt.executeQuery(SQL);  // rs will hold all the record from  he database table

                                    rs2.next();
                                    int room = Integer.parseInt(custNumber);
                                    //int value = rs.getInt("Waiting");
                                    // Integer room = new Integer(num);

                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection connnn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull", "root", "1234");

                                    String query2 = "update roomstable set Waiting = Waiting-1 where SectionNumber = ?";
                                    PreparedStatement preparedStmt2 = connnn.prepareStatement(query2);
                                    
                                    preparedStmt2.setInt(1, room);

                                    preparedStmt2.executeUpdate();

                                    System.out.println("hhe");

                                } catch (Exception e) {

                                    System.err.println("Got an exception! ");
                                    System.err.println(e.getMessage());

                                }

                                // execute the preparedstatement
                                preparedStmt.execute();

                                conn.close();
                            } catch (Exception e) {
                                System.err.println("Got an exception! ");
                                System.err.println(e.getMessage());
                            }

                            response.sendRedirect("cancelMessage.jsp");
                           // out.println("Welcome");

                        }

                    } else {
                        out.println("error");
                    }

                } else {

                }

            } catch (Exception e) {

                out.println(e);

            }


        %>

    </body>
</html>
