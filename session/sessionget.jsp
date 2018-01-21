<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <title>get session</title>
  </head>
  <body>
    <%
      // 세션 받아옴
      Object obj1 = session.getAttribute("mySessionName");
      // getAttribute로 해당하는 session 속성값을 가져올 수 있음
      // getAttribute의 반환값은 무조건 Object type
      String mySessionName = (String)obj1;
      out.println(mySessionName+"<br />");

      Object obj2 = session.getAttribute("myNum");
      Integer myNum = (Integer)obj2;
      out.println(myNum+"<br />");

      out.println("============================= <br />");

      String sName;
      String sValue;
      Enumeration enumeration = session.getAttributeNames();
      // getAttributeNames = 모든 name을 다 얻어오는 것
      // 모든 값을 Enumeration객체를 이용해서 직렬화된 객체로 받아옴
      while(enumeration.hasMoreElements()){
        // hasMoreElements
        sName = enumeration.nextElement().toString();
        sValue = session.getAttribute(sName).toString();
        out.println("sName : "+sName+"<br />");
        out.println("sValue : "+sValue+"<br />");
      }

      out.println("============================= <br />");

      // 세션 ID
      String sessionID = session.getId();
      // sessionId = 한 브라우저당 고유한 아이디가 하나씩 생성됨
      // 반환값은 String형
      out.println("sessionID : "+sessionID + "<br />");
      int sessionInter = session.getMaxInactiveInterval();
      // getMaxInactiveInterval = 유효시간
      // tomcat apache 서버에 conf폴더에 web.xml에 설정되어 있음
      // '분''으로 저장되어있음
      // default = 30분
      out.println("sessionInter : "+sessionInter+"<br />");
      // 출력은 '초'단위로 나옴

      out.println("============================= <br />");

      // 특정 세션의 데이터값만 삭제
      session.removeAttribute("mySessionName");
      Enumeration enumeration1 = session.getAttributeNames();
      while(enumeration1.hasMoreElements()){
        sName=enumeration1.nextElement().toString();
        sValue=session.getAttribute(sName).toString();
        out.println("sName : "+sName+"<br />");
        out.println("sValue : "+sValue+"<br />");
      }

      out.println("============================= <br />");

      // 세션에 있는 모든 데이터값 삭제
      session.invalidate();
      if(request.isRequestedSessionIdValid()){
        // 유효한 세션이 존재하는가
        out.println("session valid");
      } else {
        out.println("session invalid");
      }
    %>
  </body>
</html>
