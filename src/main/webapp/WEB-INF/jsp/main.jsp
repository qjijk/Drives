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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/file.css" />
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/filemanage.js" type="text/javascript"></script>
</head>
<body>

<table border="1" width="100%"  class="form-bg" >
    <tr class="form-horizontal"><td colspan="2"><h3>文件管理</h3></td></tr>
    <tr><td width="10%" valign="top">
        <table width="100%" class="h2">
            <tr><td><a href="upload.do" name="a" target="myfeame">文件上传</a></td></tr>
            <tr><td><a href="list.do" name="c" target="myframe">目录管理</a></td></tr>
            <tr><td><input type="button" value="新建文件夹" onclick="rebuild()"></td></tr>
        </table>
    </td>
        <td width="70%">
            <iframe name="myframe" src="list.do" width="100%" height="500"></iframe>
        </td>

    </tr>
</table>
</body>
</html>
