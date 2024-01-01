<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Information for all employees</title>
</head>

<body>
<h3>Information for all employees</h3>
<br><br>
<security:authorize access="hasRole('HR')">
<input type = "button" value = "Salary" onclick = "window.location.href = '/hr_info'">
Only for HR staff
</security:authorize>
<br><br>
<security:authorize access="hasRole('MANAGER')">
<input type = "button" value = "Performance" onclick = "window.location.href = '/manager_info'">
Only for Managers
</security:authorize>
</body>

</html>