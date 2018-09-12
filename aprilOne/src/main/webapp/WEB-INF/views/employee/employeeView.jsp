<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>직원 상세보기</title>
</head>

<body>
	<table class="table">
		<tbody>
			<tr>
				<th>아이디</th>	<!-- empId -->
				<td>${item.empId}</td>
			</tr>
			<tr>
				<th>이름</th>	<!-- empName -->
				<td>${item.empName}</td>
			</tr>
			<tr>
				<th>전화번호</th>	<!-- empPhone -->
				<td>${item.empPhone}</td>
			</tr>
			<tr>
				<th>주민번호</th>	<!-- empRrnum -->
				<td>${item.empRrnum}</td>
			</tr>
			<tr>
				<th>주소</th>	<!-- empAddress -->
				<td>${item.empAddress}</td>
			</tr>
			<tr>
				<th>직책</th>	<!-- empDiv -->
				<td>
					<c:if test="${item.empDiv eq 'D'}">의사</c:if>
					<c:if test="${item.empDiv eq 'N'}">간호사</c:if>
					<c:if test="${item.empDiv eq 'A'}">*미선택</c:if>
				</td>
			</tr>
			<tr>
				<th>연봉</th>	<!--empSalary -->
				<td>${item.empSalary}</td>
			</tr>
			<tr>
				<th>입사일</th>	<!-- empHiredate -->
				<td>${item.empHiredate}</td>
			</tr>
			<tr>
				<th>퇴사일</th>	<!-- empRetiredate -->
				<td>${item.empRetiredate}</td>
			</tr>
		</tbody>
	</table>

	<c:url value='/employee/employeeEdit' var='employeeEditUrl'>
		<c:param value='${item.empId}' name='empId' />
	</c:url>
	<button class="btn"><a href="${employeeEditUrl}">수정</a></button>

	<c:url value='/employee/employeeRetire' var='employeeRetireUrl'>
		<c:param value='${item.empId}' name='empId' />
	</c:url>
	<button class="btn"><a href="${employeeRetireUrl}">"YOU'RE FIRED!"</a></button>
</body>
</html>