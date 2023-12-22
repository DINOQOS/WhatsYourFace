<%@ page import="dao.UserDAO" %>
<%@ page contentType="application/json;charset=UTF-8" %>
<%
// UserDAO 객체 생성
UserDAO userDAO = new UserDAO();

// 요청으로부터 'animal' 파라미터 가져오기
String animal = request.getParameter("animal");

// UserDAO의 animal 메소드 호출 및 결과 저장
String result = userDAO.animal(animal);
System.out.println("sad" + result);

// 결과를 JSON 형식으로 응답
response.setContentType("application/json;charset=UTF-8");
response.setCharacterEncoding("UTF-8");
response.getWriter().write("{\"result\": \"" + result + "\"}");
%>
