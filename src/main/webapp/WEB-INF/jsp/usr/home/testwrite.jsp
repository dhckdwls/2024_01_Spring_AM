<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../common/head2.jspf"%>
<main style="text-align:center;">
	<div>
		<h1>글쓰기</h1>
	</div>
	<div class="line"></div>
	<div class="write-box" style="text-align:center;">
		<table>
			<tr>
				<th colspan="2" style="border-radius: 10px 10px 0 0;">여행 정보 입력</th>
			</tr>
			<tr>
				<td>여행지:</td>
				<td><input type="text" placeholder="여행지를 입력하세요"></td>
			</tr>
			<tr>
				<td>여행지 설명:</td>
				<td><textarea placeholder="여행지에 대한 설명을 입력하세요"></textarea></td>
			</tr>
			<tr>
				<td>여행지 주소:</td>
				<td><input type="text" placeholder="여행지의 주소를 입력하세요"></td>
			</tr>
			<tr>
				<td>여행지 사진:</td>
				<td><input type="file"></td>
			</tr>
			<tr>
				<td>태그:</td>
				<td><input type="text" placeholder="#여행 #기억"></td>
			</tr>
			<tr class="buttons">
				<td colspan="2">
					<button class="cancel">취소</button>
					<button>작성하기</button>
				</td>
			</tr>
		</table>
	</div>
</main>

<style>
table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
	border-radius: 10px;
	overflow: hidden;
}

th, td {
	padding: 15px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #4CAF50;
	color: white;
}

td input, td textarea {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 5px;
}

td input[type="file"] {
	padding: 12px;
}

td button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

td button.cancel {
	background-color: #bbb;
	margin-right: 10px;
}

td button:hover {
	background-color: #45a049;
}

td button.cancel:hover {
	background-color: #999;
}

td.buttons {
	text-align: center;
	border-radius: 0 0 10px 10px;
}
</style>

<%@ include file="../common/foot2.jspf"%>