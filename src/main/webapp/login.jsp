<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

    <div class="container">
    <div class="row">
    <div class="col-sm-12 text-center" >
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6">
    <h2>로그인</h2>
    <form action="loginAction.jsp" method="post">
        <table class="table table-boardered">
            <tr>
                <th>아이디</th>
                <td>
                <input type="text" class="form-control" name="name" style="margin:5px">
                </td>
                        
            </tr>
            <tr>
                <th>패스워드</th>
                <td><input type="password" class="form-control" name="password"></td>      
            </tr>
             
    
             
            <tr>
                <td colspan="2">
				<button type="submit" class="btn btn-default" value="로그인" onclick="inputCheck()">로그인</button>
				<button type="button" class="btn btn-default" value="회원가입" onClick="location.href='register.jsp'">회원가입</button>
					
             
                </td>
            </tr>
             
             
        </table>
    </form>
    </div>
     
    </div>
    </div>
</div>
</body>
</html>