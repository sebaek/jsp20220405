<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<h1>나이별 추천 영화</h1>
	
	<form>
		나이 : <input type="number" name="age" id="" />
		
		<input type="submit" value="영화 추천받기" />
	</form>	
	
	<%-- 코드 작성 --%>
	<%-- 20세이상이면 "데드풀" --%>
	<%-- 12세이상이면 "어벤져스" --%>
	<%-- 4세이상이면 "토이스토리" --%>
	<%-- 나머지는 "적절한 나이를 입력해주세요" --%>
	
</body>
</html>
















