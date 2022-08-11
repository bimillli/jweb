<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 리스트</title>
</head>
<style>
	.list{width:80%; padding:0 10px 10px; margin:0 auto;}
	li{list-style:none; border-bottom:1px solid #ccc;
		line-height:120px; position:relative;}
	.list .title{list-style:none; border-bottom:1px solid #ccc; line-height:80px;}
	.list li span{margin-left:340px; color:blue; font-size:14px}
	.list li img{float:left; margin:10px 0; postion:absolute;}
	.list li a{margin-left:340px; text-decoration:none;}

</style>
<body>
	<ul class="list">
	<!-- 제목행 -->
		<li class="title">
			<span>이미지</span>
			<span>이미지 이름</span>
			<span>선택하기</span>
		</li>
		<c:forEach var="i" begin="1" end="10">
		<li>
			<a href="#" style="margin-left:30px">
				<img src="./resources/images/bear.jpg" alt="곰인형" width="100" height="100">
			</a>
			<a href="#"><strong>이미지 이름: 곰인형${i}</strong></a>
			<a href="#"><input type="checkbox" name="chk${i}"></a>
		</li>
		</c:forEach>	
	</ul>
</body>
</html>