<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <%-- http-equiv 속성은 meta 요소에서 정의된 명령(사항)을 먼저 실행한 후에 페이지를 로딩 --%>
    <title>welecome</title>
  </head>
  <body>
    <%
      Cookie[] cookies = request.getCookies();
      // 넘어온 쿠키값들을 배열에 넣는다.
      for(int i=0; i<cookies.length; i++){
        String id=cookies[i].getValue();
        if(id.equals("abcde"))
          out.println(id+"님 안녕하세요."+"<br />");
      }
    %>

    <a href="logout.jsp">로그아웃</a>

  </body>
</html>
