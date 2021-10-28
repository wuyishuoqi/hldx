<%@ page import="org.dielian.domain.Manager" %><%--
  Created by IntelliJ IDEA.
  User: LUJIANCAI
  Date: 2021/9/25
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addfail</title>
</head>
<body>
<%  Manager testBean;
    testBean=(Manager) session.getAttribute("loginBean");
    if(testBean==null){
        response.sendRedirect("/hldx_war_exploded");
    }
%>
<h3>Add manager fail!</h3>
<h3>Mybatis exception! Because you have two roles in Mysql!</h3>
</body>
</html>
