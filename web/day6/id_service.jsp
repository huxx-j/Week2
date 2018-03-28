<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %> <%--//소스보기에서 제일 윗줄에 공백을 없앨떼--%>
<%
    String cmd = request.getParameter("cmd");
    if (cmd.equals("id")){
        cmd = "true";

    }else {
        cmd = "123456";
    }
    out.print(cmd);
%>