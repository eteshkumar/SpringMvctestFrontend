<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
			<h1>${formLabel}</h1>
			
			<f:form action="${path}/registerUser" method="post" modelAttribute="userObj">
			 <f:errors path = "*" cssClass = "errorblock" element = "div" />
			<table>
				<tr>
					<td>Product Id : </td>
					<td><f:input path="productId"/></td>
				</tr>
				<tr>
					<td>Product Name : </td>
					<td><f:input path="productName"/></td>
				</tr>
				<c:if test="${userObj.password eq null || empty userObj.password}">
				<tr>
					<td>Price:</td>
					<td><f:password path="price"/></td>
				</tr>
				</c:if>

					<td></td>
					<td>
						<input type="submit" value="${btnLabel}"/>
					</td>
				</tr>
			</table>
			</f:form>
			<script type="text/javascript">
			$(document).ready(functon()){}
		</div>
</body>
</html>