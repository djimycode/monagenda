<%--
  Created by IntelliJ IDEA.
  User: hamza
  Date: 06/02/18
  Time: 04:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>



<body>
     <div class="container">
         <img src="user.png">
         <form action="/login" method="post">

              <p>   login_name:<input  type="text" name="loginname" width="30"/></p>



              <p>   password:  <input  type="password" name="password" width="10"/> </p>

      <input   type="submit"  value="login"   />

         </form>
    <p style="color:red;">${errorMessage}</p>
      <div class="message">
     <p>Pour s'inscrir cliquer <a href="/Formulaire/formulaire.jsp" style="color: aqua">ici</a> </p>
      </div>
      </div>



</body>
</html>
