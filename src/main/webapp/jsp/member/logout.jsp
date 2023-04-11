<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<div>
		<a href="../home/main">메인페이지로 이동</a>
	</div>

	<h1>로그아웃</h1>

	<script type="text/javascript">
		var JoinForm__submitDone = true;
		function JoinForm__submit(form) {
			alter('로그아웃 되었습니다');
		}
		
		JoinForm__submitDone = false;
		form.submit();
	}
	</script>


	<form method="post" action="doLogout"
		onsubmit="JoinForm__submit(this); return false;">

		<a href="../home/main"
			onclick="if(confirm('로그아웃 하시겠습니까?') == false) return false;"></a>

		<button type="submit">로그아웃</button>

	</form>




</body>
</html>