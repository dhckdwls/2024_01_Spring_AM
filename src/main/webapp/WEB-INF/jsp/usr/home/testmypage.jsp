
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../common/head.jspf"%>
<main style="text-align: center;">
	<div>
		<h1 style="font-size: 3rem;">마이페이지</h1>
	</div>
	<div class="container1 flex flex-col">
		<div class="card" style="width: 40%;">
			<h2 style="text-align: center; padding: 20px; margin: 0; background-color: red; color: white;">User Information</h2>
			<table>
				<tr>
					<th>이름 :</th>
					<td>test</td>
				</tr>
				<tr>
					<th>나이 :</th>
					<td>test</td>
				</tr>
				<tr>
					<th>성별 :</th>
					<td>test</td>
				</tr>
				<tr>
					<th>아이디 :</th>
					<td>test</td>
				</tr>
				<tr>
					<th>주소 :</th>
					<td>test</td>
				</tr>
				<tr>
					<th>전화번호 :</th>
					<td>test</td>
				</tr>
				<tr>
					<th>Email :</th>
					<td>test</td>
				</tr>
			</table>
		</div>
		<div>
			<button>회원정보 수정</button>
			<button>회원탈퇴</button>
		</div>
	</div>



</main>

<style>
.container1 {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f1f1f1;
}

.card {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}
</style>
<%@ include file="../common/foot.jspf"%>