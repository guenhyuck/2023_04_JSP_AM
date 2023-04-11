<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div>
		<a href="../home/main">메인페이지로 이동</a>
	</div>
	<h1>회원가입 페이지</h1>
	<form method="post" action="doJoin">
	<style type="text/css">
	
.page {
	display:flex;
}

.page div{
 text-alians:center;
}

</style>
			<div class=join>
			이름 : <input autocomplete="off" type="text" placeholder="이름을 입력해주세요"
				name="`name`" />
		</div>
		<div>
			아이디 : <input autocomplete="off" type="text" placeholder="아이디를 입력해주세요"
				name="loginId" />
		</div>
		<div>
			패스워드 :
			<input type="password" placeholder="패스워드를 입력해주세요" name="password" ></input>
		</div>
		<button type="submit">회원가입</button>
		
	</form>

</body>
</html>

