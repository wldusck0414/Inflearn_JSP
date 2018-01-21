<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title>session Test</title>
  </head>
  <body>
    <%
      Enumeration enumeration = session.getAttributeNames();
      int i=0;
      while(enumeration.hasMoreElements()) {
        // session에 값이 존재하면 while문 실행
        i++;

        String sName = enumeration.nextElement().toString();
        String sValue = (String)session.getAttribute(sName);

        out.println("sName : "+sName+"<br />");
        out.println("sValue : "+sValue+"<br />");
      }

      if(i==0)
        out.println("해당 세션이 삭제되었습니다.");
    %>
  </body>
</html>
