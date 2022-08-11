<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원추가</title>
</head>
<body>
	<%
		String driverClass = "com.mysql.cj.jdbc.Driver";
		String url = 
				"jdbc:mysql://localhost:3306/jspdb?useUnicode=true&serverTimezone=Asia/Seoul";
		String username = "root";
		String password = "12345";
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
		Class.forName(driverClass);
		conn = DriverManager.getConnection(url, username, password);
		String sql = "INSERT INTO user VALUES(133, 'rainy', '여름싫어')";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();  //실행
		out.println("MySQL DB 연결 성공했습니다");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(conn != null)
				conn.close();
		}
	%>
</body>
</html>