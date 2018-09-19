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
<title>진료 등록</title>
</head>

<body>
	"//의사만 접근 가능할 예정"
	<form class="form-horizontal" action="<c:url value='${urls.clinic_createProc}' />" method="POST">
		<table class="table">
			<tbody>
				<tr>
					<th>진료코드</th>
					<td>
						// 서버에서 자동 생성. currval을 이용해서 보여줄까?
					</td>
				</tr>
				<tr>
					<th>환자이름(환자코드)</th>
					<td>
						<c:if test="${param.patCode ne null}">
							${param.patName} (${param.patCode})
						</c:if>

						<input type="hidden" name="patCode" required value="${param.patCode}"> <!-- null상태서 서브밋 하면 에러터짐 -->
						<a class='btn btn-info btn-xs' href="<c:url value='${urls.patient_list}' />">환자검색</a>
					</td>
				</tr>
				<tr>
					<th>담당의</th>
					<td>
						${loginInfo.empName} (${loginInfo.empId})
						<input type="hidden" name="empId" class="form-control" required value="${loginInfo.empId}">
					</td>
				</tr>
				<tr>
					<th>진료내용</th>
					<td>
						<textarea name="clnDescr" class="form-control" rows="4" cols="50" placeholder="진료내용" require></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="btn btn-lg btn-primary btn-block" type="submit" value="">진료등록</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form>	 

</body>
</html>





