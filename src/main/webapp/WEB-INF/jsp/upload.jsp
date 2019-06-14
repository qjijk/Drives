<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/6/11
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/file.css" />
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/filemanage.js" type="text/javascript"></script>
</head>
<body >
<table  width="70%" border="2px">
<tr class="form-horizontal">
    <td>
    <form action="${pageContext.request.contextPath }/file/upload.chao"
      method="post" enctype="multipart/form-data" >
    选择文件:<input type="file" name="file" width="120px" class="form-bg"> <input
        type="submit" value="上传">
</form>
</td>
</tr>
</table>
</body>
</html>
