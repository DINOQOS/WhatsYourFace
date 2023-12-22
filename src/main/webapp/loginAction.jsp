<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="dao.UserDAO"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="dto.User" scope="page" />
<jsp:setProperty name="user" property="name" />
<jsp:setProperty name="user" property="password" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 과정</title>
</head>
<body>
	<%
		String userID = request.getParameter("name");
		String userPassword = request.getParameter("password");
		
		UserDAO userDAO = new UserDAO();
		System.out.print(userID);
		System.out.print(userPassword);
		int result = userDAO.login(user.getName(), user.getPassword());
		if(result == 1){
			session.setAttribute("userID",user.getName());//로그인 세션
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공')");
			script.println("location.href='home.jsp'");
			script.println("</script>");
		}else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류입니다')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
</body>
</html>