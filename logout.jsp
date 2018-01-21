<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <%-- http-equiv 속성은 meta 요소에서 정의된 명령(사항)을 먼저 실행한 후에 페이지를 로딩 --%>
    <title>logout</title>
  </head>
  <body>
    <%
      Cookie[] cookies = request.getCookies();
      // 쿠키를 request로 받아온다.
      if(cookies != null){
        for(int i=0; i<cookies.length; i++){
          if(cookies[i].getValue().equals("abcde")){
            cookies[i].setMaxAge(0);
            // abcde인 쿠키값 삭제
            response.addCookie(cookies[i]);
            // 속성이 변경되었기 때문에 다시 response로 쿠키 탑재
            // 방금 삭제한 쿠키만 삭제
          }
        }
      }

      //response.sendRedirect("login.html");
      response.sendRedirect("cookietest.jsp");
    %>
  </body>
</html>
