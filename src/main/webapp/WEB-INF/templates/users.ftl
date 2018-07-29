<html>
<head>
    <title>Users</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
<#if users?has_content>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
    </tr>
      <#list users as user>

    <tr>
        <td>${user.name}</td>
        <td>${user.surname}</td>
        <td>${user.email}</td>
    </tr>

      </#list>
</table>
<#else>
<h1>No users yet</h1>
</#if>


</body>
</html>