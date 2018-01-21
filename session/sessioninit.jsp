<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title>init session</title>
  </head>
  <body>
    <%
      // 세션 생성
      session.setAttribute("mySessionName","mySessionData");
      // setAttribute로 session 속성 지정
      session.setAttribute("myNum", 12345);
    %>

    <a href="sessionget.jsp">session get</a>

  </body>
</html>
