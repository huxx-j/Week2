<%@ page import="kr.co.bit.day4.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 29.
  Time: AM 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %> <%-- 에러가 나면 절루가라 --%>
<html>
<head>
    <title>다른 타입의 JSP</title>
</head>
<body>
<%
//    int a = 10/0;
//    out.print(a);
%>
<jsp:useBean id="member" class="kr.co.bit.day4.MemberVO" scope="request"></jsp:useBean> <%-- id는 변수임 이렇게 하면 MemberVo 객체가 만들어짐 --%>
<!-- scope="request"는 request.setAttribute("member",member); 와 같음
    scope="session"은 session.setAttribute("member",member); 와 같음-->
<!-- 위에 내용은 이 코드와 같음 -> MemberVO member = new MemberVO;
                             request.setAttribute("member",member);-->

<%
    member.setId("admin");
    System.out.println(member.getId());
%>
<jsp:getProperty name="member" property="id"></jsp:getProperty> <!-- member 객체의 id 필드를 가지고 와서 브라우저에 출력 -->
<!-- out.print(member.getId()); 와 같음 -->
<jsp:setProperty name="member" property="pw" value="1234"></jsp:setProperty>
<!-- member.setPw(1234); 와 같음 -->
<%
    System.out.println(member.getPw());
//    session.setAttribute("member",member); //forward 를 이용하여 데이터 전송하기
//    request.setAttribute("member",member); // forward로 데이터를 보낼땐 request로 보내준다.
%>
<jsp:forward page="process.jsp">
    <jsp:param name="etc1" value="data1"></jsp:param>
    <jsp:param name="etc2" value="data2"></jsp:param>
</jsp:forward>
<!-- response.sendRedirect("process.jsp?etc1="+data1+"&ect2="+data2); 와 같음 -->
<!-- requestDispacher 에서  forward 시킨거랑 같은거?-->
</body>
</html>
