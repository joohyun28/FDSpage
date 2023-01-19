<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@include file="AdminTop.jsp" %>
<%
String[] img ={"ozing.jpeg", "banana.jpeg", "gaesoo.jpeg", "poka.jpeg", "eyejelly.jpeg", "whitehime.jpeg", "milkys.jpeg", "minit.jpg", "ggobuk.jpeg"};
String[] name = {"오징어집", "바나나킥", "헛개수", "포카칩", "눈알젤리", "화이트하임", "밀키스", "미닛메이드", "꼬북칩"};
String[] price = {"1,500", "1,500", "1,700", "1,300", "1,350", "1,400", "500", "1,000", "1,100"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SnackMall</title>
<script type="text/javascript">

function ProductModify(name, price) {
	location.href = "contents/admin/ProdModForm.jsp?name=" + name + "&price=" + price;
}

</script>
</head>
<body>
<div align="center">
	<h3>[오늘의 특가]</h3>
	<table border="1">
		<%
		for(int i = 0; i < img.length; i++) {
			if(i % 3 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td>");
				out.println("<table>");
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<img src = 'img/" + img[i] + "' width='150' height='150' />");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>" + name[i] + "</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>￦" + price[i] + "원</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							//한 줄로 쓰기
							//out.println("<input type='button' value='장바구니 담기' onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
							//두 줄로 쓰기, 닫는 큰 따옴표와 괄호 옆의 띄어쓰기 필수
							out.println("<input type='button' value='상품정보수정' ");
							out.println("onclick='ProductModify(\"" + name[i] + "\", \"" + price[i] + "\")' />");
						out.println("</td>");
					out.println("</tr>");
				out.println("</table>");
			out.println("</td>");
			if(i % 3 == 2) {
				out.println("</tr>");
			}
		}
		%>	
	</table>
</div>
</body>
</html>