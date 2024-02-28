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
	
	async function getData3() {
		const API_KEY = '7gBxrsj7WSHvOZjYdEQXGXuT9pq9L8NMGDZ9hzG7VnyftpPH7IIKkWxq2HkS94X9AsKLEzXCkaOZeH94lv28Bg%3D%3D';
		const url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst?serviceKey=' + API_KEY + '&numOfRows=10&pageNo=1&base_date=20210628&base_time=0500&nx=55&ny=127';
		const response = await fetch(url);
		const data = await response.json();
		console.log("data", data);
	}
	
	getData3(); 

	
</script>

<%@ include file="../common/foot.jspf"%>