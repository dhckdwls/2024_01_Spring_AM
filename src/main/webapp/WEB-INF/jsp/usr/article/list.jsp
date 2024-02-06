<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="#{board.code } ARTICLE LIST"></c:set>
<%@ include file="../common/head.jspf"%>


<section class="mt-8 text-xl px-4">
	<div class="mx-auto overflow-x-auto">
		<div class="badge badge-outline">${articlesCount }개</div>
		<table class="table-box-1 table" border="1">
			<colgroup>
				<col style="width: 10%" />
				<col style="width: 20%" />
				<col style="width: 60%" />
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>날짜</th>
					<th>제목</th>
					<th>작성자</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="article" items="${articles }">
					<tr class="hover">
						<td>${article.id }</td>
						<td>${article.regDate.substring(0,10) }</td>
						<td><a href="detail?id=${article.id }">${article.title }</a></td>
						<td>${article.extra__writer }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="pagination flex justify-center mt-3">
		<div class="btn-group">
			<%-- <a href="?boardId=${boardId }&page=${(page - 1) < 1 ? 1 : page -1 }">뒤로가기</a> --%>
			<c:forEach begin="1" end="${articlesCount % 10 == 0 ? (articlesCount / 10) : (articlesCount / 10) + 1 }" var="i">
				<a class="btn btn-sm ${param.page == i ? 'btn-active' : '' }" href="?boardId=${boardId }&page=${i }">${i }</a>
			</c:forEach>
		</div>
	</div>
	<br />
	<div class="pagination flex justify-center mt-3">
		<c:if test="${Page > 1 }">
			<a href="?boardId=${boardId }&page=1">◀◀</a>
		</c:if>
		<c:if test="${pageGroup * pageSize > totalPage }">
			<set var="end" value="${totalPage }"></set>
		</c:if>

		<c:if test="${from < 1 }">
			<set var="from" value="1"></set>
		</c:if>

		<c:if test="${end > totalPage }">
			<set var="end" value="totalPage"></set>
		</c:if>

		<set var="beforeBtn" value="${page-pageSize }"></set>
		<c:if test="${beforeBtn < 1 }">
			<set var="beforeBtn" value="1"></set>
		</c:if>
		<a href="?boardId=${boardId }&page=${beforeBtn }">◁</a>
		
		<c:forEach begin="${from }" end="${end }" var="i">
		<a class="btn btn-sm ${param.page == i ? 'btn-active' : '' }" href="?boardId=${boardId }&page=${i }">${i }</a>
		</c:forEach>
		
		<set var="afterBtn" value="${pageGroup*pageSize + 1 }"></set>
		<c:if test="${afterBtn > totalPage }">
		<set var="afterBtn" value="${totalPage }"></set>
		</c:if>
		<a href="?boardId=${boardId }&page=${afterBtn }">▷</a>
		
		<c:if test="${page < totalPage }">
		<a href="?boardId=${boardId }&page=${totalPage }">▶▶</a>
		</c:if>
 
	</div>

</section>



<%@ include file="../common/foot.jspf"%>