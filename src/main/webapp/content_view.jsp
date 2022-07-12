<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="dao" class="board.Board1DAO" />
	<c:set var="dto" value="${dao.getContent(param.bnum) }" />
	
		<table border="1">
			<tr>
				<td>번호 : ${dto.bnum }</td> <td colspan="2">제목 : ${dto.title }</td>
			</tr>
			<tr>
				<td>아이디 : ${dto.id }</td> <td>작성자 : ${dto.name }</td> <td>조회수 : ${dto.hit }</td>
			</tr>
			<tr>
				<td colspan="3">내용</td> 
			</tr>
			<tr>
				<td colspan="3">${dto.content }</td>
			</tr>
		</table>
</body>
</html>