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
	flex-basis: 150px;
	/*   flex-shrink: 0; */
	min-width: 10%;
	border: 2px solid red;
}

/* 중단 메인 */
.container>.content>main {
	background-color: #aed6f1;
	flex-grow: 1;
	/*   flex-shrink: 1; */
	border: 2px solid red;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* 중단 오른편 */
.container>.content>aside {
	flex-basis: 120px;
	/*   flex-shrink: 0; */
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
					<a href="#">RANDOM TRIP (로고)</a>
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
				<div class="border-1">
					<form action="../member/doJoin" method="POST">
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
									<th>이름</th>
									<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
										placeholder="이름을 입력해주세요" name="name" /></td>
								</tr>
								<tr>
									<th>닉네임</th>
									<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
										placeholder="닉네임을 입력해주세요" name="nickname" /></td>
								</tr>
								<tr>
									<th>전화번호</th>
									<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
										placeholder="전화번호를 입력해주세요" name="cellphoneNum" /></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
										placeholder="이메일을 입력해주세요" name="email" /></td>
								</tr>

								<tr>
									<th></th>
									<td><input class="btn btn-outline btn-info" type="submit" value="가입" /></td>
								</tr>
							</tbody>
						</table>
					</form>
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