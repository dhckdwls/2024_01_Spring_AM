<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MYPAGE"></c:set>
<%@ include file="../common/head.jspf"%>
<div>마이페이지</div>

<section>
<table class="table-box-1 table" border="1">
		<thead>
			<tr>
				<th>고유번호</th>
				<th>가입날짜</th>
				<th>수정날짜</th>
				<th>로그인 아이디</th>
				<th>관리자레벨</th>
				<th>이름</th>
				<th>닉네임</th>
				<th>전화번호</th>
				<th>email주소</th>
				<th>회원정보 수정</th>
				

			</tr>
		</thead>
		<tbody>
				<tr class="hover">
					<td>${member.id }</td>
					<td>${member.regDate }</td>
					<td>${member.updateDate }</td>
					<td>${member.loginId }</td>
					<td>${member.authLevel }</td>
					<td>${member.name }</td>
					<td>${member.nickname }</td>
					<td>${member.cellphoneNum }</td>
					<td>${member.email }</td>
					<td><a href="/usr/member/modify?id=${rq.loginedMemberId }" class="btn btn-sm btn-ghost btn-outline">회원정보수정</a></td>
					
					
				</tr>
		</tbody>
	</table>

</section>



<%@ include file="../common/foot.jspf"%>