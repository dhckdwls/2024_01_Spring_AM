<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트메인</title>
</head>
<body>
	<script src="/resource/common.js" defer="defer"></script>
	<!-- 테일윈드 불러오기 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" />

	<!-- daisy ui 불러오기 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/daisyui/4.6.1/full.css" />

	<!-- 폰트어썸 불러오기 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

	<!-- 제이쿼리 불러오기 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	<style>
/* Font */
@import url('https://fonts.googleapis.com/css?family=Quicksand:400,700')
	;

/* Design */
*, *::before, *::after {
	box-sizing: border-box;
}

h1 {
	font-size: 24px;
	font-weight: 400;
	text-align: center;
}

/* 사진 */
img {
	height: auto;
	max-width: 100%;
	vertical-align: middle;
}

/* 사진아래더보기버튼 */
.btn1 {
	color: #ffffff;
	padding: 0.8rem;
	font-size: 14px;
	text-transform: uppercase;
	border-radius: 4px;
	font-weight: 400;
	display: block;
	width: 100%;
	cursor: pointer;
	border: 1px solid rgba(255, 255, 255, 0.2);
	background: transparent;
}

/* 더보기 버튼 호버 했을때 */
.btn1:hover {
	background-color: rgba(255, 255, 255, 0.12);
}

.cards {
	display: flex;
	flex-wrap: wrap;
	list-style: none;
	margin: 0;
	padding: 0;
}

.cards_item {
	display: flex;
	padding: 1rem;
}

@media ( min-width : 40rem) {
	.cards_item {
		width: 50%;
	}
}

@media ( min-width : 56rem) {
	.cards_item {
		width: 33.3333%;
	}
}

.card {
	background-color: white;
	border-radius: 0.25rem;
	box-shadow: 0 20px 40px -14px rgba(0, 0, 0, 0.25);
	display: flex;
	flex-direction: column;
	overflow: hidden;
	border: 2px solid black;
}

.card_content {
	padding: 1rem;
	background: linear-gradient(to bottom left, #EF8D9C 40%, #FFC39E 100%);
}

.card_title {
	color: #ffffff;
	font-size: 1.1rem;
	font-weight: 700;
	letter-spacing: 1px;
	text-transform: capitalize;
	margin: 0px;
}

.card_text {
	color: #ffffff;
	font-size: 0.875rem;
	line-height: 1.5;
	margin-bottom: 1.25rem;
	font-weight: 400;
}

.pageBtn>.btn {
	display: inline-block;
}
</style>


	<style>
/* 노말라이즈 */
body, h1 {
	margin: 0;
	padding: 0;
	list-style: none;
}

a {
	color: inherit;
	text-decoration: none;
}

/* 커스텀 */
.container {
	display: flex;
	flex-direction: column;
	min-width: 100%;/* 가로 스크롤 생기는거 방지 */
	min-height: 100vh;
	
}

/* 상단 */
.container>.header {
	background-color: deepskyblue;
	flex-grow: 0;
}

.header {
	justify-content: space-between;
	/* border: 2px solid red; */
}

.top_left>div {
	display: block;
}

.top_left>div>a {
	display: block;
	padding: 10px;
}

.top_left>div:hover>a {
	background-color: blue;
}

.top_right>div {
	display: inline-block;
}

.top_right>div:hover>a {
	background-color: blue;
}

.top_right>div>a {
	display: block;
	padding: 10px;
}

/* 중단 */
.container>.content {
	display: flex;
	flex-direction: row;
	flex-grow: 1;
}

/* 중단 왼편 */
.container>.content>nav {
	background-color: #aed6f1;
	flex-basis: 150xp;
	flex-shrink: 0;
	min-width: 10%;
	border: 2px solid red;
}

/* 중단 메인 */
.container>.content>main {
	background-color: #aed6f1;
	flex-grow: 1;
	flex-shrink: 1;
	border: 2px solid red;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* 중단 오른편 */
.container>.content>aside {
	flex-basis: 120px;
	flex-shrink: 0;
	background-color: #aed6f1;
	min-width: 10%;
	border: 2px solid red;
}

/* 하단 */
.container>footer {
	flex-grow: 0;
	background-color: deepskyblue;
	display: flex;
	justify-content: center;
}
</style>


	<div class="container">
		<div class="header flex items-center">
			<div class="top_left">
				<div>
					<a href="#">사이트 (로고)</a>
				</div>
			</div>
			<div class="top_right">
				<div>
					<a href="#">LOGIN</a>
				</div>
				<div>
					<a href="#">JOIN</a>
				</div>
			</div>


		</div>
		<section class="content">
			<nav>
				<ul>
					<li><a href="#">여행지추천기</a></li>
					<li><a href="#">여행지</a></li>
					<li><a href="#">지도</a></li>
					<li><a href="#">마이페이지</a></li>
					<li><a href="#">QnA</a></li>
				</ul>
			</nav>
			<main class="flex flex-col">
			<h1>여행지</h1>
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
								<button class="btn btn-sm" type="submit">검색</button>
							</form>
						</div>
					</div>
				</div>
				<div>
					<button class="btn btn-sm">
						<a href="#">거리순</a>
					</button>
					<button class="btn btn-sm">
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
				<div class="pageBtn" style="margin-bottom: 20px;">
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
			<aside>달력이랑 날씨 넣을 자리</aside>
		</section>
		<footer>
			<a href="#">하단</a>
		</footer>
	</div>



</body>
</html>