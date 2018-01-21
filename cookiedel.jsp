<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <%-- http-equiv 속성은 meta 요소에서 정의된 명령(사항)을 먼저 실행한 후에 페이지를 로딩 --%>
    <title>delete cookie</title>
  </head>
  <body>
    <%
      Cookie[] cookies = request.getCookies();
      for(int i=0; i<cookies.length; i++){
        String str=cookies[i].getName();
        if(str.equals("cookieName")){
          out.println("name : "+cookies[i].getName()+"<br />");
          cookies[i].setMaxAge(0);
          // 유효기간 = 0, 바로 삭제
          response.addCookie(cookies[i]);
          // 유효기간이 0이 된 쿠키를 탑재
        }
      }
    %>

    <a href="cookietest.jsp">쿠키확인</a>

  </body>
</html>
