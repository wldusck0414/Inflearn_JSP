<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <%-- http-equiv 속성은 meta 요소에서 정의된 명령(사항)을 먼저 실행한 후에 페이지를 로딩 --%>
    <title>loginOk</title>
  </head>
  <body>
    <%!
      // 선언부
      String id, pw;
    %>
    <%
      id=request.getParameter("id");
      pw=request.getParameter("pw");

      if(id.equals("abcde")&&pw.equals("12345")){
        // 아이디가 abcde이고, 비밀번호가 12345일 때
        Cookie cookie = new Cookie("id", id);
        // 쿠키생성
        cookie.setMaxAge(60);
        // 1분간 유지
        response.addCookie(cookie);
        // 쿠키 탑재
        response.sendRedirect("welcome.jsp");
      } else {
        response.sendRedirect("login.html");
      }
    %>
  </body>
</html>
