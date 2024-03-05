<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../common/head.jspf"%>
<main class="flex flex-col">
	<h1 style="font-size:4rem; font-weight:bold;">여행지</h1>
	<div>
		<div class="mx-auto overflow-x-auto">
			<div class="mb-4 flex">
				<div class="badge badge-outline">${articlesCount }개</div>
				<div class="flex-grow"></div>
				<form action="">
					<input type="hidden" name="boardId" value="${param.boardId }" /> <select
						data-value="${param.searchKeywordTypeCode }" class="select select-bordered select-sm w-full max-w-xs"
						name="searchKeywordTypeCode">
						<option value="title">제목</option>
						<option value="body">내용</option>
						<option value="title,body">제목+내용</option>
					</select> <input value="${param.searchKeyword }" name="searchKeyword" type="text" placeholder="searchKeyword?"
						class="input-sm input input-bordered w-48 max-w-xs" />
					<button class="btn btn-sm btn-outline" type="submit">검색</button>
				</form>
			</div>
		</div>
	</div>
	<div style="text-align: start;">
		<button class="btn btn-sm btn-outline">
			<a href="#">최신순</a>
		</button>
		<button class="btn btn-sm btn-outline">
			<a href="#">인기순</a>
		</button>
	</div>
	<div class="main">
		<div>
			<ul class="cards">
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://picsum.photos/500/300/?image=10">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://imagescdn.gettyimagesbank.com/500/201308/a6670583.jpg">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjQPWW1zt-8MkPRCCEYFj4Xy-4kX0KSmRuY3bFkxWsfw&s">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://picsum.photos/500/300/?image=10">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://picsum.photos/500/300/?image=10">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://picsum.photos/500/300/?image=10">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://lh4.googleusercontent.com/proxy/bEt4sI9j3_LOmYx9T9tl5eomarTp4zeVroGX8lxlzwJQHlsSeer5gTDvok8Hh4npDipsLTTpOueOR0BvdW2ARYhue-EdiYGGUFdZhyhlJ5nbF-wXIg">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://picsum.photos/500/300/?image=10">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
				<li class="cards_item">
					<div class="card">
						<div class="card_image">
							<img src="https://picsum.photos/500/300/?image=10">
						</div>
						<div class="card_content">
							<h2 class="card_title">서울</h2>
							<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
							<button class="btn1 card_btn">더보기</button>
						</div>
					</div>
				</li>
		</div>
	</div>
	<div class="pageBtn" style="margin-bottom: 20px; text-align: center;">
		<button>
			<a href="#" class="btn btn-sm">1</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm">2</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm">3</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm">4</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm">5</a>
		</button>
	</div>
</main>

<%@ include file="../common/foot.jspf"%>