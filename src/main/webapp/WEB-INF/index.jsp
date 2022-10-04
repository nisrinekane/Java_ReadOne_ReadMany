<%--
  Created by IntelliJ IDEA.
  User: nisrinekane
  Date: 10/3/22
  Time: 3:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/styles.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<html>
<head>
    <title>books</title>
</head>
<body>
    <h1>All Books</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Title</th>
            <th scope="col">Language</th>
            <th scope="col">Number of Pages</th>
        </tr>
        </thead>
        <tbody>
        <!-- loop over all the books to show the details as in the wireframe! -->
        <c:forEach items="${books}" var="book">
            <tr>
            <td><c:out value="${book.id}" /></td>
            <td><a href="/books/${book.id}"><c:out value="${book.title}" /></a></td>
            <td><c:out value="${book.description}" /></td>
            <td><c:out value="${book.numberOfPages}" /></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
