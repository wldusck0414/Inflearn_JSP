<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <%-- http-equiv 속성은 meta 요소에서 정의된 명령(사항)을 먼저 실행한 후에 페이지를 로딩 --%>
    <title>set cookie</title>
  </head>
  <body>
    <%
    // java 코드
      Cookie cookie = new Cookie("cookieName", "cookieValue");
      // 서버에서 쿠키 객체 생성
      cookie.setMaxAge(60*60);
      // 쿠키 유효기간 정보 ->3600초 = 1시간
      response.addCookie(cookie);
    %>
    <a href="cookieget.jsp">cookie get</a>
  </body>
</html>
