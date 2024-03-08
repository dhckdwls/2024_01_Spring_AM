<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../common/head2.jspf"%>
<style>
.img-box img {
	width: 500px;
	height: auto;
}
</style>


<!-- 지도 관련 스크립트 -->
<script>
	
	//버튼 클릭에 따라 지도 확대, 축소 기능을 막거나 풀고 싶은 경우에는 map.setZoomable 함수를 사용합니다
	function setZoomable(zoomable) {
		// 마우스 휠로 지도 확대,축소 가능여부를 설정합니다
		map.setZoomable(zoomable);
	}
</script>


<main class="flex flex-col items-center" style="text-align: center;">
	<div style="width: 100%; text-align: center;">
		<div>
			<h1 style="font-size: 3rem;'">상세보기(여행지이름)</h1>
		</div>
		<div class="line"></div>
		<div class="flex justify-center items-center img-box" style="height: 350px;">
			<button>
				<i class="fa-solid fa-caret-left fa-3x"></i>
			</button>
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcIuucn_n1aDJy_x_ENd1vtaqkC13JwnbuAw&s" alt="" />
			<button>
				<i class="fa-solid fa-caret-right fa-3x"></i>
			</button>
		</div>

		<div class="line"></div>

		<div>
			<h1>여행지 정보</h1>
		</div>
		<div>
			<h1>여행지 설명</h1>
		</div>
		<div>
			<h1>여행지 태그</h1>
		</div>
		<div>
			<button class="btn btn-sm btn-outline">수정</button>
			<button class="btn btn-sm btn-outline">삭제</button>
		</div>
	</div>
	<div class="line"></div>
	<div style="width: 90%; height: 100%; border: 2px solid black;">
		<!-- 지도를 표시할 div 입니다 -->
		<div id="map" style="width: 100%; height: 350px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e61cb52e3e91adc0353005a87c20fd2"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption);
		</script>

	</div>
	<div class="line"></div>
	<p>
			<button onclick="setZoomable(false)" class="btn btn-sm btn-outline">지도 확대/축소 끄기</button>
			<button onclick="setZoomable(true)" class="btn btn-sm btn-outline">지도 확대/축소 켜기</button>
		</p>
	<div class="reply-box">
		<table class="styled-table" style="width: 1300px;">
			<tbody>
				<tr>
					<td>Author 1</td>
					<td style="max-width : 300px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit ea laudantium neque fugiat debitis qui et tenetur ex eaque molestiae nobis veritatis delectus sed sunt porro praesentium quo velit odio.</td>
					<td><a href="#" class="edit-btn">Edit</a></td>
					<td><a href="#" class="delete-btn">Delete</a></td>
				</tr>
				<tr>
					<td>Author 2</td>
					<td>Content 2</td>
					<td><a href="#" class="edit-btn">Edit</a></td>
					<td><a href="#" class="delete-btn">Delete</a></td>
				</tr>
				<!-- Add more rows as needed -->
			</tbody>
		</table>

	</div>
	<div>
		<button>
			<a href="#" class="btn btn-sm btn-outline"><i class="fa-solid fa-backward"></i></a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline"><i class="fa-solid fa-caret-left"></i></a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">1</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">2</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">3</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">4</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">5</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline"><i class="fa-solid fa-caret-right"></i></a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline"><i class="fa-solid fa-forward"></i></a>
		</button>
	</div>
	<div class="line"></div>
	<div>
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
	<div>
		<h1>여행지</h1>
	</div>
	<div class="line"></div>
	<div>
		<button class="btn btn-sm btn-outline">인기순</button>
		<button class="btn btn-sm btn-outline">최신순</button>
	</div>
	<div class="detail_list">
		<ul class="cards">
			<li class="cards_item">
				<div class="card">
					<div class="card_image">
						<img src="https://picsum.photos/500/300/?image=10">
					</div>
					<div class="card_content">
						<h2 class="card_title">서울</h2>
						<p class="card_text">간단한 설명이나 태그가 들어갈자리</p>
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
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
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
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
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
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
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
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
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
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
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
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
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
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
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
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
						<button class="btn1 card_btn"><a href="/usr/home/testdetail">더보기</a></button>
					</div>
				</div>
			</li>
	</div>
	<div>
		<button>
			<a href="#" class="btn btn-sm btn-outline"><i class="fa-solid fa-backward"></i></a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline"><i class="fa-solid fa-caret-left"></i></a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">1</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">2</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">3</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">4</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline">5</a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline"><i class="fa-solid fa-caret-right"></i></a>
		</button>
		<button>
			<a href="#" class="btn btn-sm btn-outline"><i class="fa-solid fa-forward"></i></a>
		</button>
	</div>
	<div class="line"></div>
</main>
<%@ include file="../common/foot2.jspf"%>