<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h4>join us</h4>
<form action="${cp }/board/insert" method ="post">
	아이디*<br>
	<input type="text" name="mid"><br>
	비밀번호*<br>
	<input type="text" name="mpw"><br>
	비밀번호 확인*<br>
	<input type="text" name="mpwok"><br>
	이름*<br>
	<input type="text" name="mname"><br>
	휴대전화*<br>
	<input type="text" name="mphone"><br>
	이메일*<br>
	<input type="text" name="memail"><br>
	<h4>이용약관 동의</h4>
	ㅡ
	<input type="submit" value="회원가입">
	<input type="button" value="가입취소">
</form>
