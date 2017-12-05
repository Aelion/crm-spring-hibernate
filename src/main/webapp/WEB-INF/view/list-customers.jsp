<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mariusz
  Date: 05.12.2017
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List customers</title>
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>

    <div id="container">
        <div id="content">

            <table>
                <tr>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Email</th>
                </tr>

                <c:forEach var="tempCustomer" items="${customers}">
                    <tr>
                        <td>${tempCustomer.firstName}</td>
                        <td>${tempCustomer.lastName}</td>
                        <td>${tempCustomer.email}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>


</body>
</html>

