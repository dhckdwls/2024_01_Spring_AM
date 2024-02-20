<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MEMBER MODIFY"></c:set>
<%@ include file="../common/head.jspf"%>
<div>회원정보 수정</div>
<section class="mt-8 text-xl px-4">
	<div class="mx-auto">
		<form action="../member/doModify" method="POST">
			<table class="join-box table-box-1" border="1">
			<input type="hidden" name="id"  value="${rq.loginedMemberId }"/>
				<tbody>
					<tr>
						<th>이름</th>
						<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
							value="${member.name }" name="name" /></td>
					</tr>
					<tr>
						<th>닉네임</th>
						<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
							value="${member.nickname }" name="nickname" /></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
							value="${member.cellphoneNum }" name="cellphoneNum" /></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
							value="${member.email}" name="email" /></td>
					</tr>

					<tr>
						<th></th>
						<td><input class="btn btn-outline btn-info" type="submit" value="수정" /></td>
					</tr>
				</tbody>
			</table>
		</form>
		<div class="btns">
			<button class="btn btn-outline" class="" type="button" onclick="history.back();">뒤로가기</button>
		</div>
	</div>
</section>


<%@ include file="../common/foot.jspf"%>