<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../include/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

  <c:set var="acount" value="0"></c:set>
  <c:forEach var='LIST' items="${write}">
    <c:if test="${aCount} == '1' || ${aCount} == '3'">
      하
    </c:if>
    <c:set var="aCount" value="${aCount}+'1'"></c:set>
  </c:forEach>

  <c:forEach var="i" begin="0" end="10">
  </c:forEach>
  
  <c:forEach var="LIST" begin="0" end="10" varStatus="status">
    <c:if test="${status.index == 1 || status.index == 3 || status.index == 4}">
      ${LIST}
    </c:if>
  </c:forEach>
  
</body>
</html>