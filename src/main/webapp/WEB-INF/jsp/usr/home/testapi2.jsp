<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../common/head2.jspf"%>
<main>

<script>
    const apiUrl = 'http://apis.data.go.kr/B551011/KorService1/areaBasedList1';
    const serviceKey = '7gBxrsj7WSHvOZjYdEQXGXuT9pq9L8NMGDZ9hzG7VnyftpPH7IIKkWxq2HkS94X9AsKLEzXCkaOZeH94lv28Bg%3D%3D'; // 귀하의 실제 인증 키로 대체하세요
    const pageNo = 1;
    const numOfRows = 100;
    const arrange = 'A';
    const areaCode = 32; // 필요에 따라 변경하세요
    const contentTypeId = 12; // 관광 명소에 해당하는 contentTypeId
    const mobileApp = 'AppTest';
    const mobileOS = 'ETC';
	/*  */
	var arr1 = [];
	/*  */
    const url = apiUrl+'?serviceKey='+ serviceKey +'&pageNo=' + pageNo +'&numOfRows='+ numOfRows +'&MobileApp=' + mobileApp +'&MobileOS='+ mobileOS +'&arrange='+ arrange +'&areaCode=' + areaCode +'&contentTypeId='+ contentTypeId;

    fetch(url)
      .then(response => response.text())
      .then(xmlText => {
        // XML을 DOM으로 파싱
        const parser = new DOMParser();
        const xmlDoc = parser.parseFromString(xmlText, 'application/xml');

        // 특정 태그의 값을 가져오기
        const items = xmlDoc.getElementsByTagName('item');
        for (let i = 0; i < items.length; i++) {
          const title = items[i].getElementsByTagName('title')[0].textContent;
          const addr1 = items[i].getElementsByTagName('addr1')[0].textContent;
          const addr2 = items[i].getElementsByTagName('addr2')[0].textContent;
          const firstimage = items[i].getElementsByTagName('firstimage')[0].textContent;
          arr1[i] = firstimage;
          const firstimage2 = items[i].getElementsByTagName('firstimage2')[0].textContent;
          
         

          // 필요한 정보를 로그에 출력 또는 다른 용도로 활용
          console.log(title);
          console.log(addr1);
          console.log(addr2);
          console.log(firstimage);
          
          
          
        }

        console.log(xmlDoc);
        
      })
      .catch(error => {
        console.error('에러 발생:', error);
      });
  </script>
  




</main>
<%@ include file="../common/foot2.jspf"%>