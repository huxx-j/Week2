<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 28.
  Time: PM 3:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>업로드</title>
</head>
<body>

<form action="process_upload.jsp" method="post" enctype="multipart/form-data">
    <input type="text" name="title" size="5">
    <input type="file" name="file1">
    <input type="submit" value="upload">
</form>

</body>
</html>
