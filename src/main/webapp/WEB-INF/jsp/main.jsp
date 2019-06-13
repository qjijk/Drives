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
    .h1{background-color: #66afe9;text-align: center;
    }
.h2{font-size: 30px;padding: 2px;color: orange}
    </script>
</head>
<body>

<table border="1" width="100%"  class="h1">
    <tr ><td colspan="2"><h3>文件管理</h3></td></tr>
    <tr><td width="10%" valign="top">
        <table width="100%" class="h2">
            <tr><td><a href="upload.do" name="a" target="ifeame">文件上传</a></td></tr>
            <tr><td><a href="download.do" name="b" target="iframe">文件下载</a></td></tr>
            <tr><td> <a href="list.do" name="c" target="iframe">目录管理</a></td></tr>
        </table>
    </td>
        <td width="70%">
            <iframe name="myframe" src="list.do" width="100%" height="500"></iframe>
        </td>
    </tr>
</table>
</body>
</html>
