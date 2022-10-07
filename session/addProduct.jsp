<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품을 구매목록에 추가하는 페이지</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String product = request.getParameter("product");
	// 세션에게 배열을 설정
	// -> 배열 ==> 배열리스트(컬렉션프레임워크)
	ArrayList<String> list=(ArrayList)session.getAttribute("list");
   if(list==null){
      list=new ArrayList<String>();
      session.setAttribute("list", list);
   } // 세션은 브라우저를 끄기 전까지 유지되기에 위에서 선언해주고 하단에 상품을 추가하는 것이다.  
   list.add(product);

	
	// 세션에 장바구니를 만들었을 때 값이 없으면 처음 주문이다.
	// 세팅됐다면 다음께 올 것이다. 
	// 세션 스코프는 브라우저 종료 전까지 살아있다. 
	
	%>

	<script type="text/javascript">
		alert('<%=product%>가 추가되었습니다.');

		history.go(-1); // 뒤로가기, 왔던 페이지로 가기
	</script>

</body>
</html>
[출처] 세션(session)을 활용한 간단한 장바구니 시스템|작성자 azz4622
