<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../static/css/loginpage/resetPW.css" type="text/css">
<title>비밀번호 재설정|STAR</title>
</head>
<body>
	<div class="layer_fix layer_unfix pop_login pop_mem_reserve new-style-form">
	    <section>
	        <form id="loginForm" action="https://www.goodchoice.kr/user/passwdResetNewProcess" autocomplete="off" method="post" novalidate="novalidate">
	            <input type="hidden" name="returnUrl" value="">
	            <input type="hidden" name="yeogi_token" value="a92d03737df39a50b22a2dcec4c64c41">
	
	            <strong class="sub_title">새 비밀번호 설정</strong>
	
	            <p class="txt_top">
	                인증이 완료되었습니다.<br>
	                새로운 비밀번호를 입력해주세요.
	            </p>
	
				<div class="inp_type_1 ico_pw form-errors form-password-rule input-pw-div">
					<input type="password" name="passwd" placeholder="새 비밀번호(최소 8자 이상)" id="new_pw">
					<label id="new_pw_msg" class="validate_msg_label"></label>
				<button type="button" class="reset_val">초기화</button>
				</div>
				
				<div class="inp_type_1 ico_pw form-errors">
					<input type="password" name="confirm_passwd" id="new_pw_re" placeholder="새 비밀번호 확인">
					<label id="new_pw_re_msg" class="validate_msg_label"></label>
				<button type="button" class="reset_val">초기화</button>
				</div>
	
				<button type="button" onclick="changePwSubmit();" class="btn_link gra_left_right_red btn_user_submit" disabled="" style="background-color: rgb(250, 250, 250); color: rgba(0, 0, 0, 0.16); border: none;">
					<span>비밀번호 변경</span>
				</button>
	        </form>
	    </section>
	</div>
</body>
</html>