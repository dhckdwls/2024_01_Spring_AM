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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

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
	min-width: 100%;
	min-height: 100vh;
}

/* 상단 */
.container>.header {
	flex-grow: 0;
}

.header {
	justify-content: space-between;
}

.top_left>div {
	display: block;
}

.top_left>div>a {
	display: block;
	padding: 10px;
}

.top_left>div:hover>a {
	background-color: black;
	color: white;
}

.top_right>div {
	display: inline-block;
}

.top_right>div:hover>a {
	background-color: black;
	color: white;
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
	flex-basis: 150px;
	/*   flex-shrink: 0; */
	min-width: 10%;
}

/* 중단 메인 */
.container>.content>main {
	flex-grow: 1;
	/*   flex-shrink: 1; */
}

/* 중단 오른편 */
.container>.content>aside {
	flex-basis: 120px;
	/*   flex-shrink: 0; */
	min-width: 15%;
}

/* 하단 */
.container>footer {
	flex-grow: 0;
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
					<a href="#">QNA</a>
				</div>
				<div>
					<a href="#">LOGIN</a>
				</div>
				<div>
					<a href="#">JOIN</a>
				</div>

			</div>


		</div>
		<section class="content">
			<nav class="leftside flex items-center">
				<div class="fixed"
					style="border-radius: 20px; background-color: #afafaf; width: 10%; text-align: center; top: 20%; height: 30%;">
					<ul class="flex items-center justify-center flex-col mt-20">
						<li><a href="#">여행지추천기</a></li>
						<li><a href="#">여행지</a></li>
						<li><a href="#">지도</a></li>
						<li><a href="#">QNA</a></li>
						
					</ul>
				</div>
			</nav>
			<main>
				로그인 or 회원가입 or 글쓰기 or 리스트 or 수정 or 삭제 or main or 추천기
				
				<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit nobis eveniet porro magni. Atque ipsa delectus quibusdam consectetur inventore itaque dolor impedit autem beatae provident explicabo nisi soluta distinctio praesentium?</div>
				<div>Inventore possimus libero hic ut eum nihil aliquam cum. Quisquam quibusdam dicta delectus expedita alias eius molestias ad incidunt nulla rerum unde numquam maxime quo maiores enim dolor ipsum dignissimos?</div>
				<div>Ea libero ullam nemo non quidem voluptatem unde corporis asperiores cupiditate voluptatum deserunt earum deleniti et quam obcaecati voluptas repudiandae possimus mollitia expedita tenetur temporibus numquam illo. Dolorem dolore dicta.</div>
				<div>Tenetur optio dolorem suscipit voluptatibus iure commodi temporibus quaerat? Aspernatur ipsa eos excepturi sapiente temporibus odio rerum unde ratione saepe impedit quibusdam id debitis magni accusamus nulla deserunt sed quasi.</div>
				<div>Temporibus quas at ratione eaque cumque officia hic! Quia inventore porro impedit recusandae dolorum sunt nulla sequi commodi quam voluptatum quibusdam ratione eligendi quidem culpa fuga molestiae atque optio voluptatem.</div>
				<div>Ut odio accusamus ab laboriosam fugiat tempora minus iste soluta quo magni pariatur saepe vitae ipsam fuga dignissimos totam aut officia optio in porro. Tempora debitis totam enim aperiam magnam.</div>
				<div>Asperiores natus quisquam quasi quidem possimus alias quibusdam! Numquam culpa tempore enim omnis nam beatae voluptatum possimus accusamus reiciendis consequatur quam iusto nulla explicabo iure rerum esse eaque sequi velit.</div>
				<div>Fuga nobis quibusdam maiores atque tenetur pariatur aliquam inventore illo incidunt ratione laborum sequi similique magni quia iusto enim ab? Enim cupiditate saepe impedit nemo magni corrupti amet architecto ut!</div>
				<div>Iusto natus ipsum maxime voluptatibus earum quam minus ex labore ut placeat tempore laborum modi assumenda praesentium perspiciatis eum hic cum minima similique doloremque! Numquam repudiandae amet ex iure obcaecati!</div>
				<div>Magnam quas ullam placeat corrupti ipsum natus accusamus fugit illum tempore iste voluptate totam labore consequatur alias quis dolorem temporibus optio ipsa numquam recusandae eligendi obcaecati aliquam qui explicabo officiis.</div>
				<div>Atque explicabo vero saepe soluta accusamus vitae cum aspernatur ut dignissimos eaque! Repudiandae mollitia cupiditate dolorum veniam excepturi iusto. Quo inventore perspiciatis dolore aliquid ullam unde vero consequatur earum quidem.</div>
				<div>Pariatur perferendis maxime dignissimos odio dolor in animi. Ut ad mollitia perferendis consequatur exercitationem quo dolore nihil! Iusto veniam asperiores porro id vero ducimus sed eligendi praesentium eius dolor qui!</div>
				<div>Molestiae quisquam maxime sapiente aspernatur atque tenetur repellat neque sequi esse soluta. Facilis fuga deleniti vero odio assumenda voluptatum consequatur dolorem doloribus natus reiciendis ducimus adipisci. Sint nobis vero voluptate.</div>
				<div>Iste repudiandae unde ipsam deserunt delectus debitis aliquam veritatis amet eos saepe quidem natus? Aspernatur officia a cupiditate placeat ex amet laboriosam culpa. Ad possimus assumenda dignissimos ducimus quidem. Reprehenderit.</div>
				<div>Deleniti voluptate perspiciatis quaerat provident vero laborum nobis distinctio dolor aliquam animi qui ab aspernatur autem eum rerum esse officiis magni temporibus debitis dignissimos. Perspiciatis dolorum sequi suscipit nam quas?</div>
				<div>Necessitatibus pariatur nostrum facere cupiditate nam. Tempore perspiciatis quia ullam assumenda quibusdam excepturi debitis! Aliquam quasi deserunt possimus a magni officia blanditiis maxime commodi! Suscipit eum quod est vel unde.</div>
				<div>Sapiente dicta repellat doloribus blanditiis eligendi vero officia laboriosam dolores quo aliquid illum voluptates tenetur voluptate facilis atque tempora delectus provident hic velit unde distinctio ducimus eos? Dignissimos alias et.</div>
				<div>Eius laborum nulla sint veritatis vitae fuga asperiores tempora consectetur! Debitis dolor similique excepturi ullam quia sapiente asperiores repellat ab numquam exercitationem ad nemo corporis sit id beatae. Qui neque.</div>
				<div>Accusantium possimus quaerat ullam quasi mollitia impedit sed dolore! Cumque perferendis rerum explicabo placeat optio beatae quasi illum maxime fuga facere dolorum quisquam natus debitis totam obcaecati veritatis eius temporibus.</div>
				<div>Fugiat unde voluptates ut distinctio incidunt quaerat dolor. Suscipit eaque sequi laborum dolorem dolorum est omnis labore possimus nesciunt quisquam in nostrum recusandae totam expedita tenetur saepe corporis. Quaerat provident?</div>
				<div>Distinctio blanditiis quidem nihil unde magnam sint nesciunt quos corporis ipsum quo hic tempora numquam atque iste beatae. Perferendis doloremque animi ullam dicta suscipit sapiente. Inventore sed quia maiores asperiores!</div>
				<div>Architecto nulla a dignissimos aperiam eligendi possimus accusamus tempore minus vero et illo corporis ea cum ratione molestiae. Beatae vel pariatur sunt optio est officiis non nobis dignissimos doloremque eaque.</div>
				<div>Inventore ab assumenda distinctio autem temporibus quas explicabo quibusdam tempora nobis odit aut quaerat officia accusantium totam blanditiis qui consectetur tenetur amet voluptates ducimus enim vel illo deleniti libero perferendis.</div>
				<div>Eveniet sequi fuga officiis repellat veritatis repudiandae amet quasi dicta fugiat nulla saepe quidem possimus quisquam autem assumenda voluptatum odio quos vero at est sit voluptas tempora magnam adipisci facilis.</div>
				<div>A error nesciunt maiores ad dolor doloremque praesentium voluptas eum eveniet similique aperiam ratione aut excepturi in nobis placeat est animi molestias quos fuga autem perferendis maxime facere saepe quod!</div>
				<div>Vel laborum consequatur quibusdam commodi voluptatum sequi laudantium ab mollitia et illum facilis obcaecati quia corporis porro deserunt ratione nesciunt repudiandae omnis tenetur quis natus fugit deleniti architecto distinctio quam.</div>
				<div>Quibusdam quia suscipit dicta velit reprehenderit voluptatum pariatur possimus sed veritatis doloremque cumque nemo eaque excepturi mollitia voluptatem fugiat similique quod unde accusantium quidem officia? Sapiente quod maxime odio hic!</div>
				<div>Aliquid ab nemo dolore autem ea sit rem earum sequi quas quod atque veritatis reprehenderit mollitia aspernatur quisquam cupiditate praesentium accusamus qui fugiat placeat quibusdam nihil impedit quia maiores libero.</div>
				<div>Atque sint dolor iste placeat tenetur repellat recusandae magni sapiente aliquam amet officiis consectetur excepturi saepe ullam nesciunt molestias autem maiores nihil illum voluptatibus laudantium. Voluptate aliquam eligendi obcaecati sed!</div>
				<div>Ipsum tempora inventore modi facilis facere repudiandae natus cum asperiores tempore neque soluta molestias quas delectus dolor dignissimos dolorum vel adipisci nihil rem error quaerat impedit omnis itaque architecto fugiat!</div>

			</main>
			<aside>
				<div class="fixed"
					style="border-radius: 20px; background-color: #afafaf; width: 15%; text-align: center; top: 20%; height: 40%;">
					<div>
						<div class="mt-3 mb-3">날씨</div>
					</div>
				</div>
			</aside>
		</section>
		<footer> 한국관광공사, 한국관광데이터랩, tourAPI, 공공데이터포털 </footer>
	</div>



</body>
</html>