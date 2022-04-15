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
	<h1>차 등록 폼</h1>
	<form action="ex19carProcess.jsp" method="post">
		모델명 : <input type="text" name="model" /> <br />
		가격 : <input type="number" name="price" id="" /> <br />
		사용가능 : <input type="checkbox" name="available" value="true" /> <br />
		<input type="submit" value="등록" />
	</form>
	
	<hr />
	
	<c:if test="${empty applicationScope.cars }" var="emptyCars">
		<p class="text-warning">등록된 차가 없습니다.</p>
	</c:if>
	
	<c:if test="${not emptyCars }">
		<!-- table.table.table-bordered>thead>tr>th*3^^tbody -->
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>모델</th>
					<th>가격</th>
					<th>가능여부</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${applicationScope.cars }" var="car" varStatus="status">
					<tr>
						<td>${status.count }</td>
						<td>${car.model }</td>
						<td>${car.price }</td>
						<td>${car.available }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	
</body>
</html>













