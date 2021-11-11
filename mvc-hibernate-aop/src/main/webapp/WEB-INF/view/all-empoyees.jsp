<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<h2>All employees</h2>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="employees" items="${allEmployees}">

        <c:url var="updateButton" value="/update-info">
            <c:param name="employee-id" value="${employees.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/delete-employee">
            <c:param name="employee-id" value="${employees.id}"/>
        </c:url>

        <tr>
            <td>${employees.name}</td>
            <td>${employees.surname}</td>
            <td>${employees.department}</td>
            <td>${employees.salary}</td>
            <td>
                <input type="button" value="Update" onclick="window.location.href='${updateButton}'"/>
                <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>

    </c:forEach>
</table>
<br>
<input type="button" value="Add" onclick="window.location.href = 'add-new-employee'"/>
</body>