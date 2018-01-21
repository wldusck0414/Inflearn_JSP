<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <%-- http-equiv 속성은 meta 요소에서 정의된 명령(사항)을 먼저 실행한 후에 페이지를 로딩 --%>
    <title>get cookie</title>
  </head>
  <body>
    <%
      Cookie[] cookies = request.getCookies();
      // cookieset.jsp로 부터 받음

      for(int i=0; i<cookies.length; i++) {
        String str = cookies[i].getName();
        if(str.equals("cookieName")){
          out.println("cookie["+i+"] name : "+cookies[i].getName()+"<br />");
          out.println("cookie["+i+"] value : "+cookies[i].getValue()+"<br />");
          out.println("======================================<br />");
        }
      }
    %>

    <a href="cookiedel.jsp">cookie delete</a>

  </body>
</html>
