<html>
<head>
    <title>Users</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<#if users?has_content>
<div class="container">
    <h2>Users</h2>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Email</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>

        <tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.email}</td>
            <td><button type="button" class="btn btn-primary disabled">Delete</button></td>
        </tr>

        </#list>
        </tbody>
    </table>




<#else>
<div id="myDiv">
<h1>No users yet</h1>
</div>
</#if>
<h4><a href="/users/new" class="btn btn-success">Add user </a></h4>
</div>
</body>
</html>