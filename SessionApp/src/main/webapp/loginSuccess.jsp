<%--
  Created by IntelliJ IDEA.
  User: jfang
  Date: 6/8/16
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Success Page</title>
</head>
<body>
<%
    //allow access only if session exists
    String user = null;
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.html");
    }
    else {
        user = (String) session.getAttribute("user");
    }

    ServletContext sc = request.getServletContext();
    String serverInfo = sc.getServerInfo();
%>
    <h3>Hi <%=user %>, Login successful.</h3>
    <p>server: <%=serverInfo %></p>

    <p>Checkout Page</p>
    <form action="LogoutServlet" method="post">
        <input type="submit" value="Logout" >
    </form>
</body>
</html>
