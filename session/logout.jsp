<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title>logout</title>
  </head>
  <body>
    <%
      Enumeration enumeration = session.getAttributeNames();
      while(enumeration.hasMoreElements()){
        String sName = enumeration.nextElement().toString();
        String sValue = (String)session.getAttribute(sName);

        if(sValue.equals("abcde"))
          session.removeAttribute(sName);
      }
    %>

    <a href="sessiontest.jsp">sessionTest</a>

  </body>
</html>
