<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title>welcome</title>
  </head>
  <body>
    <%
      Enumeration enumeration = session.getAttributeNames();
      while(enumeration.hasMoreElements()){
        String sName = enumeration.nextElement().toString();
        String sValue = (String)session.getAttribute(sName);

        if(sValue.equals("abcde"))
          out.println(sValue+"님 안녕하세요."+"<br />");
      }
    %>

    <a href="logout.jsp">로그아웃</a>

  </body>
</html>
