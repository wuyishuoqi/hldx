<%@ page import="org.dielian.domain.Manager" %><%--
  Created by IntelliJ IDEA.
  User: LUJIANCAI
  Date: 2021/9/24
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updatefail</title>
</head>
<body>
<%  Manager testBean;
    testBean=(Manager) session.getAttribute("loginBean");
    if(testBean==null){
        response.sendRedirect("/hldx_war_exploded");
    }
%>
<h3>Update password fail!</h3>
</body>
</html>
