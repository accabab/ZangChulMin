<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
    
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>		
	</div>
	
<%
	
	ProductRepository dao = ProductRepository.getInstance();
	ArrayList<Product> listOfProducts = productDAO.getAllProducts();
%>

	<div class="container">
		<div class="row" align="center">
			<%
				for (int i=0; i < listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);
				
			%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>				
				<p><%=product.getDescription()%></p>
				<p><%=product.getUnitPrice()%>원</p>
				<p>
					<a href="product.jsp?id=<%=product.getProductId()%>"
					class="btn btn-secondary" role="button">상세정보</a>
				</p>
			</div>
			<% 	
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>