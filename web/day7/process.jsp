<%@ page import="kr.co.bit.day4.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 29.
  Time: AM 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>process</title>
</head>
<body>
<%
    out.print("process");
//    MemberVO member = (MemberVO)session.getAttribute("member"); //세션 데이터 받기
    MemberVO member = (MemberVO)request.getAttribute("member");
    System.out.println(member.getId() + " from other_type.jsp");
    String etc1 = request.getParameter("etc1");
    String etc2 = request.getParameter("etc2");
    System.out.println(etc1 + "/" + etc2);
%>
</body>
</html>
