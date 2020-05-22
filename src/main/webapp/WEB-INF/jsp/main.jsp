<%--
  Created by IntelliJ IDEA.
  User: 彭春燕
  Date: 2020/5/19
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>主界面</title>
    <style type="text/css">
        .content {
            width: 950px;
        }

        #All:hover {
            cursor: pointer;
        }

        .content table input {
            width: 15px;
            height: 15px;
        }
    </style>
</head>
<body>
    <h1>客户信息列表</h1>
    <a href="/toLogin">${loginState}</a>  <a href="/toCar">购物车</a>  <a href="/toMy">我的淘宝</a>
    <div class="content">
        <form:form modelAttribute="customer" action="" id="queryFor">
            <table border="1px" cellpadding="5" cellspacing="0">
                <tr>
                    <td width="5%" align="center" id="All">全选</td>
                    <td width="15%" align="center">客户编号</td>
                    <td width="15%" align="center">客户名称</td>
                    <td width="15%" align="center">客户负责人</td>
                    <td width="18%" align="center">客户信息来源</td>
                    <td width="18%" align="center">客户所属行业</td>
                    <td width="23%" align="center">创建日期</td>
                </tr>
                <c:forEach items="${list}" var="customer">
                    <tr>
                        <td align="center"><input type="checkbox" name="selectCustomerId"></td>
                        <td align="center">${customer.customerId}</td>
                        <td align="center">${customer.customerName}</td>
                        <td align="center">${customer.customerUserName}</td>41
                        <td align="center">${customer.customerSourseDict}</td>
                        <td align="center">${customer.customerIndustryDict}</td>
                        <td align="center">${customer.customerDate}</td>
                    </tr>
                </c:forEach>
            </table>
        </form:form>
    </div>

</body>
</html>
