<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST"></c:set>

<%@ include file="../common/head.jspf"%>

<script>
	
	async function getData() {
		const API_KEY = 'ixQo%2FUislf4YkHMgIBaDkwtFr%2FjmxRZLI55pNfsWntbXQewj3hrI50T6IoARyuZNWhk10ra5m39wMU57zRKeIw%3D%3D';
		const url = 'https://apis.data.go.kr/6300000/openapi2022/shard/getshard?serviceKey='+ API_KEY +'&pageNo=1&numOfRows=5';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	getData();
	
	async function getData2() {
		const API_KEY = 'ixQo%2FUislf4YkHMgIBaDkwtFr%2FjmxRZLI55pNfsWntbXQewj3hrI50T6IoARyuZNWhk10ra5m39wMU57zRKeIw%3D%3D';
		const url = 'https://www.yuseong.go.kr/ys_parking/ysparkingList/ORP/getJSONData.do?_wadl&type=json';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	getData2();
	
</script>
<script>
// KoGPT REST API URL
const apiUrl = "https://api.kakaobrain.com/v1/inference/kogpt/generation";

// REST API 키
const apiKey = "9e69d716eb64b669fb82a55fbb9c2e47";

// 요청 헤더 설정
const headers = new Headers({
    "Content-Type": "application/json",
    "Authorization": "KakaoAK " + apiKey
});

// 요청 본문 데이터
const requestBody = {
    input: "오늘 저녁 메뉴 추천"
};

// fetch 함수를 사용하여 API 호출
fetch(apiUrl, {
    method: "POST",
    headers: headers,
    body: JSON.stringify(requestBody)
})
.then(response => response.json())
.then(data => {
    // 여기에서 응답(data)를 가지고 필요한 작업 수행
    console.log("Response:", data);
})
.catch(error => {
    console.error("Error:", error);
});
</script>




<%@ include file="../common/foot.jspf"%>