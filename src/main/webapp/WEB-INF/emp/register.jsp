<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>


	<a href="/serverweb/mvc/member/list.do"><h1>회원목록보기</h1></a>
	<form role="form" class="form-horizontal"
		action="/serverweb/mvc/member/insert.do" method="POST" name="myform">
		<fieldset>
			<div id="legend">
				<legend>아래 양식을 작성해주세요.</legend>
			</div>
			<div class="form-group">
				<!-- 부서코드 -->
				<label class="control-label col-sm-2" for="orgcode">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="id" name="id" placeholder="아이디"
						class="form-control" required>
				</div>
			</div>
			<div class="form-group">
				<!-- 패스워드-->
				<label class="control-label col-sm-2" for="pass">패스워드</label>
				<div class="col-sm-3">
					<input type="text" id="pass" name="pass" placeholder="패스워드"
						class="form-control">

				</div>
			</div>


			<div class="form-group">
				<!-- 성명-->
				<label class="control-label col-sm-2" for="orgname">성명</label>
				<div class="col-sm-3">
					<input type="text" id="orgname" name="name" placeholder="성명"
						class="form-control" required>

				</div>
			</div>

			<div class="form-group">
				<!-- 주소-->
				<label class="control-label col-sm-2" for="addr">주소</label>
				<div class="col-sm-3">
					<input type="text" id="addr" name="addr" placeholder="주소"
						class="form-control" required>

				</div>
			</div>
			<div class="form-group">
				<!-- 포인트-->
				<label class="control-label col-sm-2" for="point">기타사항</label>
				<div class="col-sm-3">
					<input type="text" id="point" name="info" placeholder="기타사항"
						class="form-control" required>

				</div>
			</div>

			<div class="form-group">
				<!-- Button -->
				<div class="col-sm-3 col-sm-offset-2">
					<input type="submit" value="가입하기" class="btn btn-success" />
				</div>
			</div>
		</fieldset>
	</form>

</body>
</html>