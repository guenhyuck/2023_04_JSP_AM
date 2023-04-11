<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<div>
		<a href="../home/main">메인페이지로 이동</a>
	</div>

	<h1>로그인</h1>

	<script type="text/javascript">
		var JoinForm__submitDone = false;
		function JoinForm__submit(form) {
			if (JoinForm__submitDone) {
				alert('처리중 입니다');
				return;
			}
			var loginId = form.loginId.value.trim();
			var loginPw = form.loginPw.value.trim();
			var loginPwConfirm = form.loginPwConfirm.value.trim();
			if (loginId.length == 0) {
				alert('아이디를 입력해주세요');
				form.loginId.focus();
				return;
			}
			if (loginPw.length == 0) {
				alert('비밀번호를 입력해주세요');
				form.loginPw.focus();
				return;
			}
			if (loginPwConfirm.length == 0) {
				alert('비밀번호 확인을 입력해주세요');
				form.loginPwConfirm.focus();
				return;
			}
			if (loginPw != loginPwConfirm) {
				alert('비밀번호가 일치하지 않습니다');
				form.loginPw.focus();
				return;
			}
			JoinForm__submitDone = true;
			form.submit();
		
		{
			alert('다시 확인 해주세요');
			continue;
		}
	}
	</script>


	<!-- 	<a href="https://www.naver.com" -->
	<!-- 		onclick="if(confirm('진짜 이동할거임???') == false) return false;"> naver</a> -->

	<form method="post" action="doLogin"
		onsubmit="JoinForm__submit(this); return false;">
		<div>
			로그인 아이디 : <input autocomplete="off" type="text" placeholder="아이디를 입력해주세요"
				name="loginId" />
		</div>
		<div>
			로그인 비밀번호 : <input autocomplete="off" type="text" placeholder="비밀번호를 입력해주세요"
				name="loginPw" />
		</div>
		<div>
			로그인 비밀번호 확인 : <input autocomplete="off" type="text"
				placeholder="비밀번호 확인을 입력해주세요" name="loginPwConfirm" />
		</div>


		<button href="/member/join" type="submit">회원가입</button>
		<button type="submit">로그인</button>

	</form>




</body>
</html>