<%--
  Created by IntelliJ IDEA.
  User: Merouane
  Date: 06/03/2018
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Tests JDBC</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="form.css"/>" />
</head>
<body>
<h1>Tests BDD</h1>

<c:forEach items="${ messages }" var="message" varStatus="boucle">
    <p>${ boucle.count }. ${ message }</p>
</c:forEach>
</body>
</html>
