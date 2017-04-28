<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	Connection con = null;
try{
	String url = "jdbc:mysql://localhost:3306/book_ex";
	String uid = "user1";
	String pwd = "user1";
	String driver = "com.mysql.jdbc.Driver";
	Class.forName(driver);
	con = DriverManager.getConnection(url, uid, pwd);
	out.println("제대로 연결되었습니다.");
	}catch(Exception e){
		e.printStackTrace();
		out.println("연결에 실패했습니다.");
	}
%>