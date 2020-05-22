<%--
  Created by IntelliJ IDEA.
  User: 彭春燕
  Date: 2020/5/19
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>登录</title>
    <script type="text/javascript" src="../../js/jquery-1.11.0.min%20(1).js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn").on("click",function () {
                var error='';//表示错误提示语
                var flag=true;//表示通不通过验证（flag=true表示通过验证）
                var username=$("#uname").val();
                var password=$("#pwd").val();

                if(username==''||username==undefined){
                    error="用户名不能为空！";
                    flag=false;
                }
                if(password==''||password==undefined){
                    error="密码不能为空！";
                    flag=false;
                }
                if(flag==true&&error==''){
                    $("#formId").submit();
                }else {
                    alert(error);
                    return;
                }
            });
        });
    </script>
</head>
<body>
    <h1>登录</h1>
    <p style="color: red">${errorMsg}</p>
    <form:form action="/doLogin" method="post" modelAttribute="user" id="formId">
        用户名：<form:input path="uname" id="uname"/><br>
        密码：<form:password path="password" id="pwd"/><br>
        <input type="button" value="提交" id="btn">
    </form:form>
</body>
</html>
