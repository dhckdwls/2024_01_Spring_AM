<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="TEST MAIN"></c:set>
<%@ include file="../common/head2.jspf"%>
<main>


<div>
    <span id="prev-year" onclick="changeYear(-1)"><<</span>
    <span id="prev-month" onclick="changeMonth(-1)"><</span>
    <span id="month-year"></span>
    <span id="next-month" onclick="changeMonth(1)">></span>
    <span id="next-year" onclick="changeYear(1)">>></span>
  </div>
  
  <table id="calendar"></table>

</main>

<style>
#calendar {
  display: inline-block;
  border-collapse: collapse;
  margin: 10px;
}

#calendar th,
#calendar td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: center;
}

#calendar th {
  background-color: #f2f2f2;
}

#month-year {
  font-size: 1.2em;
  margin-bottom: 10px;
}

#prev-month,
#next-month,
#prev-year,
#next-year {
  cursor: pointer;
  color: blue;
  margin: 0 5px;
}

.saturday {
  color: blue;
}

.sunday {
  color: red;
}

</style>


<script>
let currentYear, currentMonth;

document.addEventListener('DOMContentLoaded', function () {
  const now = new Date();
  currentYear = now.getFullYear();
  currentMonth = now.getMonth();
  updateCalendar();
});

function updateCalendar() {
  const calendar = document.getElementById('calendar');
  const monthYearElement = document.getElementById('month-year');

  // 달력의 헤더 업데이트
  monthYearElement.textContent = `${getMonthName(currentMonth)} ${currentYear}`;

  // 이전 달력 비우기
  while (calendar.firstChild) {
    calendar.removeChild(calendar.firstChild);
  }

  // 새로운 달력 생성
  const firstDay = new Date(currentYear, currentMonth, 1);
  const lastDay = new Date(currentYear, currentMonth + 1, 0);
  const daysInMonth = lastDay.getDate();

  let dayOfWeek = firstDay.getDay();
  let date = 1;

  // 테이블 헤더 생성
  const headerRow = calendar.insertRow();
  const daysOfWeek = ['일', '월', '화', '수', '목', '금', '토'];

  for (let day of daysOfWeek) {
    const cell = headerRow.insertCell();
    cell.textContent = day;
  }

  // 달력 내용 생성
  for (let i = 0; i < 6; i++) {
    const row = calendar.insertRow();

    for (let j = 0; j < 7; j++) {
      const cell = row.insertCell();

      if ((i === 0 && j < dayOfWeek) || date > daysInMonth) {
        cell.textContent = '';
      } else {
        cell.textContent = date;
        date++;

        // 토요일과 일요일에 스타일 추가
        if (j === 6) {
          cell.classList.add('saturday');
        } else if (j === 0) {
          cell.classList.add('sunday');
        }
      }
    }
  }
}

function changeMonth(delta) {
  currentMonth += delta;

  if (currentMonth < 0) {
    currentMonth = 11;
    currentYear--;
  } else if (currentMonth > 11) {
    currentMonth = 0;
    currentYear++;
  }

  updateCalendar();
}

function changeYear(delta) {
  currentYear += delta;
  updateCalendar();
}

function getMonthName(month) {
  const monthNames = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
  return monthNames[month];
}
</script>

<%@ include file="../common/foot2.jspf"%>