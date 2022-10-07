<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이키 강남점</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	session.setAttribute("username", request.getParameter("username"));
	// session.setAttribute의 인자로 request.getParameter을 통해 받아온 변수명과 통일! 
	// 유지보수 : 같은 의미, 같은 값을 갖고 있다면 변수명을 일치시킨다.
	// 로그인하면 정보가 사라지게 하지 않기 위해 setAttribute를 사용하였다.
	// 브라우저 종료 시 재시작하기 위해 session으로 하였다.
	%>


	<%=session.getAttribute("username")%>님 환영합니다.
	<br>
	<h2>=== 상품 목록 ===</h2>
	<form action="addProduct.jsp" name="form1" method="post">
	<select name="product">
		<option selected>범고래</option>
		<option>피고래</option>
		<option>시카고</option>
	</select>



	<input type="submit" value="상품 추가하기">
</form>
<hr>
<a href="buy.jsp">구매하기</a>


</body>
</html>
[출처] 세션(session)을 활용한 간단한 장바구니 시스템|작성자 azz4622
