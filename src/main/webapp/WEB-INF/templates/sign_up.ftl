<html>
<head>
    <title>Sing up</title>
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
<form action="/users/new" method="post">
    <input name = "name" type="text" placeholder="name">
    <input name = "surname" type="text" placeholder="surname">
    <input name = "email" type="email" placeholder="email">
    <input type="submit" placeholder="Ok">
</form>

</body>
</html>