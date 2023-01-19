<!-- /* AdminUserList.jsp */  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
    
    <%
	  request.setCharacterEncoding("utf-8");
	  // id passwd name가져오기
	  String id = request.getParameter("ID");
	  String pwd = request.getParameter("PWD");
	  String username = request.getParameter("UserName");
	  String email = request.getParameter("Email");
	  String contact = request.getParameter("Contact");
	  String address = request.getParameter("Address");
	  
	    //객체참조변수 선언    
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	  
	   // 1단계 드라이버로더
	   Class.forName("com.mysql.jdbc.Driver");
	   
	// 2단계 디비연결
	   String DB_URL = "jdbc:mysql://localhost:3306/snackmall?characterEncoding=UTF-8&serverTimezone=UTC";
	   String DB_USER = "root";
	   String DB_PASSWORD= "23er";
	   conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	   
	   pstmt = conn.prepareStatement("UPDATE login_db SET PWD=?, UserName=?, Email=?, Contact=?, Address=? WHERE ID=?");

	   pstmt.setString(1, pwd);
	   pstmt.setString(2, username);
	   pstmt.setString(3, email);
	   pstmt.setString(4, contact);
	   pstmt.setString(5, address);
	   pstmt.setString(6, id);
	
		int result = pstmt.executeUpdate();

		System.out.println(result + "<-- result");
 
		pstmt.close();
		conn.close(); 
		
 		response.sendRedirect("AdminUserList.jsp");
%>
 