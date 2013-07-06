<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%Connection conn=null;
    	ResultSet rs=null;
    	Statement st=null;
	String subjects="sub_data";
	String schedule="timetable";
    	
    
    try
    {
    	String url="jdbc:mysql://localhost:3306/app";
    	String cname="com.mysql.jdbc.Driver";
    	String dbuser="root";
    	String dbpass="123456";
    	Class.forName(cname).newInstance();
    	conn=DriverManager.getConnection(url,dbuser,dbpass);
 		 st=conn.createStatement();
    	    }
    catch(Exception e)
    {
    	out.print("In data connector "+e);
    }
    finally
    {
    }
        
    %>
