<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>약품 리스트</title>
</head>
<body>

	<!-- 검색  -->

	<form class="form-horizontal" action="medicine/medicineList" id="searchForm" method="POST"></form>






	<!-- 검색테이블 -->
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>의약품코드</th>
				<th>의약품 명</th>
				<th>입고일</th>
				<th>폐기일</th>
				<th>재고 수량</th>
				<th>의약품 주의사항</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="i" items="${medList }" >
				
			<tr>
				<td>${i.medCode }</td>
				<td><a href="/medi/view?mdiCode=${i.medCode }"> ${i.medCode } </a>  </td>
				<td>${i.medStoredate }</td>
				<td>${i.medDisusedate }</td>
				<td>${i.medAmt }</td>
			</tr>
	</c:forEach>




		</tbody>
	</table>

</body>
</html>















