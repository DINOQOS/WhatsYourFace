<%@page import="java.io.PrintWriter"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="dto.User" scope="page" />
<jsp:setProperty name="user" property="name" />
<jsp:setProperty name="user" property="password" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 과정</title>
</head>
<body>
   <%
      if(user.getName() == null || user.getPassword() == null ){
         PrintWriter script = response.getWriter();
         
         script.println("<script>");
         script.println("alert('입력이 안 된 사항이 있습니다')");
         script.println("history.back()");
         script.println("</script>");
         
      }else{
         UserDAO userDAO = new UserDAO();
         int result = userDAO.join(user);
         

         if(result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 존재하는 아이디입니다')");
            script.println("history.back()");
            script.println("</script>");
         }else {
            session.setAttribute("userID",user.getName());
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('회원가입 성공')");
            script.println("location.href='login.jsp'");
            script.println("</script>");
         }
      }
   %>
</body>
</html>