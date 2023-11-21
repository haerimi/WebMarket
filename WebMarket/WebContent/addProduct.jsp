<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<script type ="text/javascript" src ="./resources/js/validation.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
	/* 선택한 파일 접근하기
	1. input 태그를 통해 사용자에 의해서 선택된 파일은 File 객체의 형태로 표현됨
	2. 이 File 객체는 FileList객체의 요소로 저장됨
	3. FileList는 배열 형태의 객체로 요소에는 File 객체가 저장되며 File 객체는
	type이 'file'인 input 태그의 files 속성이다.
	4. input 태그로 파일 1개를 선택하면 FileList 첫 번째 요소에 파일 데이터가 저장됨
	5. 사용자가 선택한 파일에 접근하기 위해선 FileList객체에 접근을 해야함
	6. 접근 방법은 input 태그의 change이벤트를 통해 접근이 가능함*/
	
	// 이미지 업로드
    $("input[name='productImage']").on("change", function(e) {
    	
    	/* 첨부 파일을 서버로 전송하기 위해선 FormData 객체를 사용해야 함
    	FormData는 가상의 form태그이기에 화면의 이동을 하면서 서버로 첨부 파일을
    	전공하는 것이라면 form태그를 사용하면 되지만 화면의 이동 없이 서버로 전송하려면
    	FormData객체를 생성하여 객체에 저장하고 자체를 서버로 전송해야 함*/
    	
    	let formData = new FormData();
        let fileInput = $('input[name="productImage"]');
        let fileList = fileInput[0].files;
        let fileObj = fileList[0];
        
  /*    console.log("fileName : " + fileObj.name);
		console.log("fileSize : " + fileObj.size);
		console.log("fileType(MimeType) : " + fileObj.type);*/
		
		/* fileCheck() 메서드가 false를 반환했을 때 not 논리 연산자로 인해
		true값으로 변경되어 if문 구현부가 실행된다.
		1. 추가하는 방법: FormData.append(key,value)메서드 사용
		key의 경우 추가해줄 데이터의 변수를 작성
		value에는 추가할 파라미터 작성
		key와 추후 추가할 url 매핑 메서드의 매개변수명이 동일해야 함
		기존 특정 key가 있는 상태에서 동일한 key로 데이터를 추가하면 값을 덮어쓰지 않고
		기존 값 집합의 끝에 새로운 값을 추가함*/
		if(!fileCheck(fileObj.name, fileObj.size)) {
			return false;
		}
		
		// 사용자가 선택한 파일을 FormData에 uploadFile 이름(key)으로 추가
		formData.append("uploadFile", fileObj);
		
		// 첨부파일을 서버에 전송 (false로 해야만 서버로 전송됨)
		$.ajax({
			url: '/resources/images',	// 서버로 요청보낼 url
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json'
		});
    });
	
	// 파일 확장자와 파일 크기 제한
    let regex = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576; //1MB
	
	function fileCheck(fileName, fileSize){

		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
			  
		if(!regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;		
		
	}
});
</script>
<title>상품 등록</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" > 
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right"> 
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>   
		</div>	
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="productId" /></label>
				<div class="col-sm-3">
					<input type="text" id ="productId" name="productId" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="pname" /></label>
				<div class="col-sm-3">
					<input type="text" id ="name" name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
				<div class="col-sm-3">
					<input type="text" id ="unitPrice" name="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="manufacturer"/></label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
				<div class="col-sm-3">
					<input type="text" id ="unitsInStock" name="unitsInStock" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="condition" /></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New " ><fmt:message key="condition_New" />
					<input type="radio" name="condition" value="Old" ><fmt:message key="condition_Old" /> 
					<input type="radio" name="condition" value="Refurbished" ><fmt:message key="condition_Refurbished" />
				</div>
			</div>
			<div class ="form-group row">
			<label class ="col-sm-2"><fmt:message key="productImage" /></label>
				<div class ="col-sm-5">
 					<input type="file" name="productImage" class="form-control">
 				</div>
 			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type ="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick ="CheckAddProduct()">
				</div>
			</div>
		</form>
	</div>
	</fmt:bundle>
</body>
</html>
