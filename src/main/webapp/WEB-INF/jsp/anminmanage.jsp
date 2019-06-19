<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/file.css" />
    <script src="js/jquery.form.js" type="text/javascript"></script>
    <script src="js/filemanage.js" type="text/javascript"></script>

</head>
<body>
<table class="form-bg3" width="100%">
    <thead >管理员界面</thead>
    <tr ><td><a href="userlist.do"  target="myframe1">管理用户</a></td></tr>
    <tr ><td><input type="button" value="管理文件"  target="myframe1" ></td></tr>
    <tr ><td><input  type="button" value="统计文件信息"></td></tr>
    <tr ><td><input  type="button" value="维护云盘空间" ></td></tr>
<tr><td><iframe name="myframe1" src="" width="100%" height="500"></iframe></td></tr>
</table>
</body>
</html>
