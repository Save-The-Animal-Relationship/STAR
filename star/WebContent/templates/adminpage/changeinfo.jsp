<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 조회/수정</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/adminpage/adminconstructor.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/adminpage/changeinfo.css">
</head>
<body>
	<main>
		<nav>
			<div class="btns">
				<a id="gomain" href="메인 페이지">사이트 바로가기</a>
			</div>
			<ul class="menubar">
				<li><label for="btns"><input class="btns" type="button"
						value="메인페이지" onClick="location.href='mainadmin.jsp'"></label></li>
				<li><label for="btns"><input class="btns" type="button"
						value="문의글 목록" onClick="location.href='answerlist.jsp'"></label></li>
				<li><label for="btns"><input class="btns" type="button"
						value="신고 목록" onClick="location.href='reportlist.jsp'"></label></li>
				<li><label for="btns"><input class="btns selected"
						type="button" value="회원정보 조회/수정"
						onClick="location.href='changeinfo.jsp'"></label></li>
			</ul>
		</nav>
		<section class="mainadminpage">
			<form class="big-box" action="${pageContext.request.contextPath}/selectAll.user">
				<p>회원정보 수정/삭제</p>	
				<div class="search-box">
					<select name="type">
						<option value="title">제목</option>
						<option value="content">내용</option>
						<option value="name">이름</option>
						<option value="id">ID</option>
					</select> 
					<input type="text" autocomplete="off" name="keyword" id="search"> 
					<input
						type="image" class="search"
						src="https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/search-512.png" />
					<input type="button" class="delete" name="delete" value="삭제하기" />
				</div>
				<div class="content">
				<table >
				<tr>
					<th><input type="checkbox" name="delete-report" class="all"/></th>
					<th>회원 번호</th>
					<th>이름</th>
					<th>ID</th>
					<th>주소</th>
					<th>나이</th>
					<th>성별</th>
					<th>전화번호</th>
					<th>이메일</th>
				</tr>
				<tr>
					<td><input type="checkbox" name="delete-report" class="term"/></td>
					<td><c:out value = "${user.userNumber}"/></td>
					<td><c:out value = "${user.userName}"/></td>
					<td><c:out value = "${user.userId}"/></td>
					<td><c:out value = "${user.userAddress1}"/></td>
					<td><c:out value = "${user.userAge}"/></td>
					<td><c:out value = "${user.userGender}"/></td>
					<td><c:out value =  "${user.userPhonenumber}"/></td>
					<td><c:out value = "${user.userEmail}"/></td>
				</tr>
				</table>
				
				
				<!-- <p class="pages"> < 1 2 3 4 > </p> -->
				
				
				</div>
			</form>
		</section>
	</main>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>let users = `${users}`;</script>
<script src="${pageContext.request.contextPath}/static/js/admin/admin.js"></script>

<script>
const $all = $(".all");
const $checkboxes = $(".term");
$all.on("click", function(){
    $checkboxes.prop("checked", $(this).is(":checked"));
});

// 체크 박스 중 한 개라도 false일 경우 전체동의 해제(filter사용)

$checkboxes.on("click", function(){
    $all.prop("checked", $checkboxes.filter(":checked").length == 10);
});


$checkboxes.each(function(i, checkbox){
    if(!($(checkbox).is(":checked"))){
        $all.prop("checked", false);
    }
});



</script>

</html>