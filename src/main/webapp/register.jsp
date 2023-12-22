<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="registerAction.jsp" method="post">
        <div>
            <label>이름: </label>
            <input type="text" name="name" required>
        </div>
        <div>
            <label>비밀번호: </label>
            <input type="password" name="password" required>
        </div>
        <div>
            <input type="submit" value="가입하기">
        </div>
    </form>
</body>
</html>