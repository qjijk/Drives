<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page import="java.util.List" %>
<%@ page import="com.msi.springemp.pojo.File" %><%--
  Created by IntelliJ IDEA.
  User: msi
  Date: 2019/6/13
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<File> ff = (List<File>)request.getSession().getAttribute("list");
    request.setAttribute("ff", ff);
%>
<c:forEach items="${requestScope.ff}" var="list" varStatus="id">

    <table bgcolor="aqua" border="5" width="70%">
        <tr>
            <td>
    ${list.realname}
    <jsp:useBean id="dateValue" class="java.util.Date"/>
    <jsp:setProperty name="dateValue" property="time" value="${list.timename}"/>
    <fmt:formatDate value="${dateValue}" pattern="MM/dd/yyyy HH:mm"/>
            </td> <td bgcolor="#ff8c00" width="20px"><a href="/file/down?timename=${list.timename}">下载</a></td>
            </td> <td bgcolor="#ff8c00" width="20px"><input  type="button" value="删除" href=""></td>
            </td> <td bgcolor="#ff8c00" width="20px"><input  type="button" value="重命名" href=""></td>
        </tr>

    </table>
</c:forEach>


</body>
</html>
