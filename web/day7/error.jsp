<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 29.
  Time: AM 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %> <%-- 여기서 에러처리한다는 의미 에러페이지를 만들면 꼭 만들어 줘야함 --%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>에러의 내용</h1>
<%
    out.print(exception.getMessage() +"<br>");
    out.print(exception);
%>
</body>
</html>
