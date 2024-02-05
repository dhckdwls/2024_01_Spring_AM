<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE MODIFY"></c:set>
<%@ include file="../common/head.jspf"%>


<section class="mt-8 text-xl px-4">
	<div class="mx-auto">
		<form action="../article/doModify" method="POST">
			<table class="modify-box table-box-1" border="1">
				<tbody>
					<tr>
						<th>번호 :</th>
						<td><input autocomplete="off" type="text" placeholder="수정할 게시물번호" name="id" /></td>
					</tr>
					<tr>
						<th>제목 :</th>
						<td><input autocomplete="off" type="text" placeholder="수정할 제목을 입력하세요" name="title" /></td>
					</tr>
					<tr>
						<th>내용 :</th>
						<td><input autocomplete="off" type="text" placeholder="수정할 내용을 입력하세요" name="body" /></td>
					</tr>
					<tr>
						<th></th>
						<td><input type="submit" value="수정" /></td>
					</tr>
				</tbody>
			</table>
		</form>
		<div class="btns">
			<button class="hover:underline" type="button" onclick="history.back();">뒤로가기</button>
		</div>
	</div>
</section>


<%@ include file="../common/foot.jspf"%>