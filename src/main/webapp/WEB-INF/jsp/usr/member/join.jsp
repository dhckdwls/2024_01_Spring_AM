<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="JOIN"></c:set>
<%@ include file="../common/head.jspf"%>

<script>
/* 아이디체크 */
function a() {
	$('.idCheck').css('display','block');
	
	var form = document.form;

	var loginId = form.loginId.value;
	var action = "/usr/member/idCheck";

	$.get(action, {
		loginId : loginId
	}, function(data) {
		$('.idCheck').text(data);
	}, 'html');

}
/* 이름체크 */
function nameCheck() {
	$('.nameCheck').css('display','block');
	var form = document.form;
	var name = form.name.value;
	var action = "/usr/member/nameCheck";
	
	$.get(action,{
		name : name
	}, function(data){
		$('.nameCheck').text(data);
	},'html')
}

/* email체크 */
function emailCheck() {
	$('.emailCheck').css('display','block');
	var form = document.form;
	var email = form.email.value;
	var action = "/usr/member/emailCheck";
	
	$.get(action,{
		email : email
	}, function(data){
		$('.nameCheck').text(data);
	},'html')
}


</script>

<section class="mt-8 text-xl px-4">
	<div class="mx-auto">
		<form name="form" action="../member/doJoin" method="POST">
			<table class="join-box table-box-1" border="1">
				<tbody>
					<tr>
						<th>아이디</th>
						<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
							placeholder="아이디를 입력해주세요" name="loginId" oninput="a()"/>
							<div class="idCheck" style="display:none"></div></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
							placeholder="비밀번호를 입력해주세요" name="loginPw" /></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input class="input input-bordered input-primary w-full max-w-xs" autocomplete="off" type="text"
							placeholder="이름을 입력해주세요" name="name" oninput="nameCheck();"/>
							<div class="nameCheck" style="display:none;"></div></td>
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
							placeholder="이메일을 입력해주세요" name="email" />
							<div class="emailCheck" style="display:none;"></div></td>
					</tr>

					<tr>
						<th></th>
						<td><input class="btn btn-outline btn-info" type="submit" value="가입" /></td>
					</tr>
				</tbody>
			</table>
		</form>
		<div class="btns">
			<button class="btn btn-outline" class="" type="button" onclick="history.back();">뒤로가기</button>
		</div>
	</div>
</section>



<%@ include file="../common/foot.jspf"%>