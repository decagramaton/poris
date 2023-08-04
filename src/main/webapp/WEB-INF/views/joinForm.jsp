<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
    <title>푸릇라이트 - 회원가입</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/joinForm_style.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/joinForm.js"></script>

</head>
<body>
    <header>
        <h1><a href="main"><img src="${pageContext.request.contextPath}/resources/images/fruitlight_logo.png"></a></h1>
    </header>
    <section>
        <form action="#" method="get" id="joinform">
            <div class="form_title">회원정보를 입력해주세요</div>
            <fieldset>
                <legend class="skip">회원가입 양식</legend>
                <ul>
                    <li>
                        <span class="id_bg"><!-- 배경이미지(이메일) --></span>
                        <span style="width:100%"><input type="text" name="userId" id="user_id" placeholder="아이디(이메일)"></span>
                    </li>
                    <span id="uidNotInputErr" class="errorMsg">이메일을 입력하세요.</span>
                    <span id="uidNotAvailableErr" class="errorMsg">이메일을 올바르게 입력해주세요.</span>
                    <li>
                        <span class="pw_bg"><!-- 배경이미지(비밀번호) --></span>
                        <span style="width:100%"><input type="password" name="userPassword" id="user_pw" placeholder="비밀번호"></span>
                    </li>
                    <span id="user_pw_letter_combination" class="errorMsg">영문/숫자/특수문자 2가지 이상 조합 (8~20자)</span>
                    <span id="user_pw_character_pattern" class="errorMsg">3개 이상 연속되거나 동일한 문자/숫자 제외</span>
                    <span id="user_pw_duplicate_pattern" class="errorMsg">아이디(이메일) 제외</span>
                    <span id="user_pw_success" class="errorMsg">사용가능한 비밀번호입니다</span>
                    <li>
                        <span class="pw_check_bg"><!-- 배경이미지(비밀번호 확인) --></span>
                        <span style="width:100%"><input type="password" name="userPasswordCheck" id="user_pw_check" placeholder="비밀번호 확인"></span>
                    </li>
                    <span id="pw_no_match" class="errorMsg">새 비밀번호가 일치하지 않습니다.</span>
                    <span id="pw_match" class="errorMsg">새 비밀번호가 일치합니다.</span>
                    <li>
                        <span class="name_bg"><!-- 배경이미지(성함) --></span>
                        <span style="width:100%"><input type="text" name="userName" id="user_name" placeholder="이름"></span>
                    </li>
                    <span id="uname_no_match" class="errorMsg">이름을 정확히 입력하세요.</span>
                    <li>
                        <span class="tel_bg"><!-- 배경이미지(연락처) --></span>
                        <span style="width:100%"><input type="tel" name="userTel" id="user_tel" placeholder="휴대폰 번호"></span>
                    </li>
                    <span id="phone_no_match" class="errorMsg">휴대폰 번호를 정확하게 입력하세요.</span>
                </ul>
                <div class="agree_form">
                    <div class="all_agree_form">
                        <label>
                            <input type="checkbox" name="all_agree_y" id="all_agree_y">
                            <span class="all_agree_content">모두 확인하였으며 동의합니다.</span>
                            <div>
                                전체 동의에는 필수 및 선택 정보에 대한 동의가 포함되어 있으며, 개별적으로 동의를 선택 하실 수 있습니다. 선택 항목에 대한 동의를 거부하시는 경우에도 서비스 이용이 가능합니다.
                            </div>
                        </label>
                    </div>
                    <ul class="detail_agree_form">
                        <div class="wrapper">
                            <label>
                            <input type="checkbox" id="age_agree_check">
                                <span>[필수] 만 14세 이상입니다</span>
                            </label>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="coupang_agree_check">
                                <span>[필수] 쿠팡 이용약관 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="finance_agree_check">
                                <span>[필수] 전자금융거래 이용약관 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="user_info_collection_agree_check">
                                <span>[필수] 개인정보 수집 및 이용 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                        <div class="wrapper">
                            <label>
                                <input type="checkbox" id="user_info_share_agree_check">
                                <span>[필수] 개인정보 제3자 제공 동의</span>
                            </label>
                            <span class="agree_btn"></span>
                        </div>
                    </ul>
                </div>
                <div class="join_btn">
                    <button type="submit" id="join_btn">동의하고 계속하기</button>
                </div>
            </fieldset>
        </form>
    </section>
    <footer>
        &copy; Fruitlight Corp. All rights reserved.
    </footer>
</body>

</html>