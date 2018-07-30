<#assign  sf=JspTaglibs["http://www.springframework.org/tags/form"]>
<html>
<head>
    <title>Sing up</title>
    <style>
        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
</head>
<body>

<@sf.form action="/users/new" method="post" modelAttribute="user">
    <div>
        <@sf.label path="name">Name</@sf.label>
        <@sf.input path="name"/>
        <@sf.errors path="name"/>
    </div>
    <div>
            <@sf.label path="surname">Surname</@sf.label>
            <@sf.input path="surname"/>
            <@sf.errors path="surname"/>
    </div>
    <div>
            <@sf.label path="email">Email</@sf.label>
            <@sf.input path="email"/>
            <@sf.errors path="email"/>
    </div>
<input type="submit">
</@sf.form>


</body>
</html>