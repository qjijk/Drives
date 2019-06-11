<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/6/11
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <script type="text/css">

    </script>
</head>
<body>

<table border="1" width="100%"  >
    <tr ><td colspan="2"><h3>文件管理</h3></td></tr>
    <tr><td width="10%" valign="top">
        <table width="100%">
            <tr><td><a href="" name="a" target="">文件上传</a></td></tr>
            <tr><td><a href="" name="b">文件管理</a></td></tr>
            <tr><td> <a href="" name="c">目录管理</a></td></tr>
            <tr><td>用户管理</td></tr>
        </table>
    </td>
        <td width="70%">
            <iframe name="myframe" src="${pageContext.request.contextPath}/list" width="100%" height="500"></iframe>
        </td>
    </tr>
</table>
</body>
</html>
