<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ARTICLE DETAIL</title>
</head>
<body>
	<h1>게시물 상세보기</h1>
	
	
	<ul>
	<li>번호 : ${article.id }</li>
	<li>작성날짜 : ${article.regDate }</li>
	<li>수정날짜 : ${article.updateDate }</li>
	<li>작성자 : ${article.memberId }</li>
	<li>작성자이름 : ${article.nickname }</li>
	<li>제목 : ${article.title }</li>
	<li>내용 : ${article.body }</li>
	</ul>

</body>
</html>