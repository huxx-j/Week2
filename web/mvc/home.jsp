<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 29.
  Time: PM 3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>

</head>
<body>
Home
<a href="./controller?cmd=viewRegist">등록</a>
<a href="./controller?cmd=searchAll">전체조회</a>
<form action="./controller?cmd=search" method="post">
	<input type="text" name="id">
	<input type="submit" value="부분조회">
</form>
</body>
</html>