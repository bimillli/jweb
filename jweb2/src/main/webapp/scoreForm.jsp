<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 관리</title>
</head>
<body>
	<h2>점수를 입력해주세요</h2>
	<form action="./scoreTest.jsp" method="get" name="scoreForm">
		<p>점수: <input type="text" name="score">
			<input type="submit" value="학점출력" 
				   onclick="checkScore()">
	</form>
	
	<script>
	//점수를 입력해주세요 메시지 띄우기
	function checkScore(){
		let form = document.scoreForm;
		if(form.score.value ==""){
			alert("점수를 입력해주세요");
			form.score.focus();
			return false; // 값없이 페이지넘김을 방지함
		}
		form.submit();  //폼을 전송함
	}
	</script>
</body>
</html>