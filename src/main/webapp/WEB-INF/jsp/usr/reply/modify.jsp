<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MODIFY"></c:set>
<%@ include file="../common/head.jspf"%>


<section class="mt-8 text-xl px-4">
	<div class="mx-auto">
		<form action="../reply/doModify" method="POST">
			<input type="hidden" name="afterLoginUri" value="${param.afterLoginUri }" />
			<input type="hidden" name="id" value="${reply.id }" />
			<input type="hidden" name="relId" value="${reply.relId }" />
			<table class="reply-box table-box-1" border="1">
				<tbody>
					<tr>
						<th>댓글내용</th>
						<td>
							<input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
								value="${reply.body }" name="body" />
						</td>
					</tr>
					<tr>
						<th></th>
						<td>
							<input class="btn btn-outline btn-info" type="submit" value="댓글수정" />
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		<div class="btns">
			<button class="btn btn-outline" type="button" onclick="history.back();">뒤로가기</button>
		</div>
	</div>
</section>

<%@ include file="../common/foot.jspf"%>