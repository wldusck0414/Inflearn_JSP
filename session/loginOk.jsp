<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title>loginOk</title>
  </head>
  <body>
    <%!
      String id, pw;
    %>
    <%
      id=request.getParameter("id");
      pw=request.getParameter("pw");

      if(id.equals("abcde") && pw.equals("12345")) {
        session.setAttribute("id", id);
        response.sendRedirect("welcome.jsp");
      } else {
        response.sendRedirect("login.html");
      }
    %>
  </body>
</html>
