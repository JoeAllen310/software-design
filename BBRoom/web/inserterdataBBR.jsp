<%-- 
    Document   : insertdataBBR
    Created on : Nov 25, 2016, 5:57:18 PM
    Author     : Alvaro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            String fname = request.getParameter("first_name");
            String lName = request.getParameter("last_name");
            String numPeople = request.getParameter("num_people");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");

            String checkin = request.getParameter("checkin");
            String checkout = request.getParameter("checkout");
            String sectionNum = request.getParameter("section_number");
            String creditNum = request.getParameter("credit_card");
            String expiredDate = request.getParameter("expired_date");
            //waitin list  String name = request.getParameter("first_name");
            ///    String waiting = "0";

            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull", "root", "1234");
                Statement st = conn.createStatement();

                st.executeUpdate("insert into customer(FirstName,LastName,People,Email,Phone,CheckIn,CheckOut,RoomNumber,CreditCard,expiredDate)values('" + fname + "','" + lName + "','" + numPeople + "','" + email + "','" + phone + "','" + checkin + "','" + checkout + "','" + sectionNum + "','" + creditNum + "','" + expiredDate + "')");

                
                
                try {

                    String host = "jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull";
                    String uName = "root";
                    String uPass = "1234";

                    Connection con = DriverManager.getConnection(host, uName, uPass);

                    Statement stmt = con.createStatement();
                    String SQL = "SELECT * FROM  roomstable"; // Workers is the name of the table.
                    ResultSet rs = stmt.executeQuery(SQL);  // rs will hold all the record from  he database table

                    rs.next();
                    int room = Integer.parseInt(sectionNum);
                    //int value = rs.getInt("Waiting");
                    // Integer room = new Integer(num);

                   

                  
                    

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mynewdatabase?zeroDateTimeBehavior=convertToNull", "root", "1234");

                    String query = "update roomstable set Waiting =Waiting+1 where SectionNumber = ?";
                    PreparedStatement preparedStmt = connn.prepareStatement(query);
                    //preparedStmt.setInt(1, value);
                    preparedStmt.setInt(1, room);

                    preparedStmt.executeUpdate();

                    System.out.println("hhe");

                } catch (Exception e) {

                    System.err.println("Got an exception! ");
                    System.err.println(e.getMessage());

                }

                out.println("data is inserted");

            } catch (Exception e) {

                out.println(e);

                out.println();
                out.println("An invalid data or number of people \n"
                        + "has been entered please go back and try\n"
                        + "to enter valid information\n "
                        + "\n"
                        + "\n"
                        + "Thank you");
            }
        %>


    </body>
</html>
