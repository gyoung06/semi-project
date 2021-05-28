<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h4>join us</h4>
<form action="${cp }/board/insert" method ="post">
	아이디<br>
	<input type="text" name="mid"><br>
	비밀번호<br>
	<input type="text" name="mpw"><br>
	비밀번호 확인<br>
	<input type="text" name="mpwok"><br>
	이름<br>
	<input type="text" name="mname"><br>
	휴대전화<br>
	<input type="text" name="title"><br>
	이메일<br>
	<input type="text" name="title"><br>

	<input type="submit" value="등록">
</form>
