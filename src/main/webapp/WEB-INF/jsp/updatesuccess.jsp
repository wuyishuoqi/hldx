<%@ page import="org.dielian.domain.Manager" %><%--
  Created by IntelliJ IDEA.
  User: LUJIANCAI
  Date: 2021/9/24
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>sucess</title>
</head>
<body>
<%  Manager testBean;
    testBean=(Manager) session.getAttribute("loginBean");
    if(testBean==null){
        response.sendRedirect("/hldx_war_exploded");
    }
%>

<h3>Update sucessful !</h3>
<p>账号：${name}</p>
<p>新密码：${newpassword}</p>
</body>
</html>
