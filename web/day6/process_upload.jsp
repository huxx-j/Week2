<%@ page import="java.io.File" %>
<%@ page import="java.util.List" %>
<%@ page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.tomcat.util.http.fileupload.FileItem" %>
<%@ page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.FileWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 28.
  Time: PM 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>업로드</title>
</head>
<body>
<%
    long maxSize = 50*1024*1024;
    long holdSize = maxSize/10;
    String path = System.getProperty("java.io.tmpdir");
    DiskFileItemFactory factory = new DiskFileItemFactory(); // DiskFileItemFactory- 저장할 장소를 설정해주기 위해 인스턴스 하나 생성 / 업로드 할 내용에 대한 준비 작업
    factory.setDefaultCharset("UTF-8");
    factory.setRepository(new File(path));  // factory.setRepository(new File(path)) - path 경로로 생성한 파일 인스턴스를 repository로 셋팅  // temp가 생기는 이유? 임시파일 생성 후  repository에 넣어줘야 제대로 된 파일이 생성됨
    factory.setSizeThreshold((int)holdSize);
    ServletFileUpload upload = new ServletFileUpload(factory);
    upload.setSizeMax(maxSize);
    upload.setHeaderEncoding("UTF-8");
    List<FileItem> items = upload.parseRequest(new ServletRequestContext(request)); // request-  각각의 태그를 핸들링해야된다. ( 파일이면 복사 , 변수면 키값 받기 ) // 정보가 있어야 복사를 할 수 있다.// 리퀘스트에서 날아오는 태그들을 분석한다.//분석해서 list에 넣어준다.
    Iterator<FileItem> i = items.iterator();

    while(i.hasNext()) {
        FileItem item = (FileItem)i.next();
        if(item.isFormField()){
            String name = item.getFieldName();
            String value = item.getString();
            System.out.println(name+"/"+value);
        } else {
            String fileName = item.getName();
            System.out.println(fileName);
            int index = fileName.lastIndexOf("\\");
            fileName = index!=-1?fileName.substring(index+1):fileName;
            System.out.println(fileName);
            File file = new File(path+"/"+fileName);
            item.write(file); //업로드
        }
    }
    out.print("success");
%>
</body>
</html>
