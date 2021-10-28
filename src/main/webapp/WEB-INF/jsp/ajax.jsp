<%@ page import="org.dielian.domain.Manager" %><%--
  Created by IntelliJ IDEA.
  User: LUJIANCAI
  Date: 2021/4/27
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>保修结果</title>
    <script type="text/javascript" src="../../js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../../js/ajax.js"></script>
    <base href="<%=basePath%>" />
</head>
<body>
<%  Manager testBean;
    testBean=(Manager) session.getAttribute("loginBean");
    if(testBean==null){
        response.sendRedirect("/hldx_war_exploded");
    }
%>
<%--<p>#{list}</p>--%>
<p align="center">欢迎查看保修结果</p>
<table align="center" id="find">

</table>

<table align="center"> <tr><td>跳转到第几页：</td><td><input type="text" id="ye"></td></tr>
    <tr><td><input type="button" id="btn" value="查询"></td></tr>            </table>


<br>
<p align="center"><a href="/up" >上一页</a> <a href="/down" >下一页</a></p>
</body>
</html>
