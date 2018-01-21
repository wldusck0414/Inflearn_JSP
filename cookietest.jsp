<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <%-- http-equiv 속성은 meta 요소에서 정의된 명령(사항)을 먼저 실행한 후에 페이지를 로딩 --%>
    <title>test cookie</title>
  </head>
  <body>
    <%
      Cookie[] cookies = request.getCookies();
      // 쿠키를 가져옴
      if(cookies != null) {
        for(int i=0; i<cookies.length; i++){
          out.println(cookies[i].getName()+"<br />");
          out.println(cookies[i].getValue()+"<br />");
        }
      }
    %>

  </body>
</html>
