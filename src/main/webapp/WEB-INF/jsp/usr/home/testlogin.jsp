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
	min-width: 100vw;
	min-height: 100vh;
}

/* 상단 */
.container>.header {
	background-color: deepskyblue;
	flex-grow: 0;
}

.header {
	justify-content: space-between;
	border: 2px solid red;
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

.table-box-1 th, .table-box-1 td {
	border: 1px solid black;
	padding: 10px;
	text-align: center;
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
			<main>

				<form action="../member/doLogin" method="POST">
					<table class="join-box table-box-1" border="1">
						<tbody>
							<tr>
								<th>아이디</th>
								<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
									placeholder="아이디를 입력해주세요" name="loginId" /></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
									placeholder="비밀번호를 입력해주세요" name="loginPw" /></td>
							</tr>
							<tr>
								<th></th>
								<td><input class="btn btn-outline btn-info btn-sm" type="submit" value="로그인" />
									<button class="btn btn-sm">아이디찾기</button>
									<button class="btn btn-sm">비밀번호 찾기</button>
									<button class="btn btn-sm">회원가입</button></td>
							</tr>
						</tbody>
					</table>
				</form>


			</main>
			<aside>달력이랑 날씨 넣을 자리</aside>
		</section>
		<footer>
			<a href="#">하단</a>
		</footer>
	</div>



</body>
</html>