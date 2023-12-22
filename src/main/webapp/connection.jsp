<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
			request.setCharacterEncoding("UTF-8");
			Connection conn = null;
			try {
				String url = "jdbc:mysql://localhost:3306/AnimalData";
				String user = "root";
				String password = "1234";
				
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, user, password);
				out.println("DB연결 성공");
			} catch (SQLException ex) {
				out.println("DB연결 실패");
				out.println("SQLException : " + ex.getMessage());
				
			} finally {
				if (conn != null)
					conn.close();
			}
			
	%>
</body>
</html>