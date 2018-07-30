<#assign  sf=JspTaglibs["http://www.springframework.org/tags/form"]>
<html>
<head>
    <title>Sing up</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Add user</h2>
    <@sf.form action="/users/new" method="post" modelAttribute="user">
        <div class="form-group">
             <label class="control-label col-sm-2" for="name">Name:</label>
            <div class="col-sm-10">
            <#--<@sf.label path="name">Name</@sf.label>-->
            <@sf.input path="name"/>
            <@sf.errors path="name"/>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="surname">Surname:</label>
            <div class="col-sm-10">
                <#--<@sf.label path="surname">Surname</@sf.label>-->
                <@sf.input path="surname"/>
                <@sf.errors path="surname"/>
            </div>
        </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">Email:</label>
        <div class="col-sm-10">
          <#--<@sf.label path="email">Email</@sf.label>-->
            <@sf.input path="email"/>
            <@sf.errors path="email"/>
        </div>
    </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label><input type="checkbox" name="remember"> Remember me</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success">Submit</button>
                <a href="/users" class="btn btn-danger">Cancel </a>
            </div>
        </div>
    </@sf.form>

</div>


<#--<@sf.form action="/users/new" method="post" modelAttribute="user">-->
    <#--<div>-->
        <#--<@sf.label path="name">Name</@sf.label>-->
        <#--<@sf.input path="name"/>-->
        <#--<@sf.errors path="name"/>-->
    <#--</div>-->
    <#--<div>-->
            <#--<@sf.label path="surname">Surname</@sf.label>-->
            <#--<@sf.input path="surname"/>-->
            <#--<@sf.errors path="surname"/>-->
    <#--</div>-->
    <#--<div>-->
            <#--<@sf.label path="email">Email</@sf.label>-->
            <#--<@sf.input path="email"/>-->
            <#--<@sf.errors path="email"/>-->
    <#--</div>-->
<#--<input type="submit">-->

<#--</@sf.form>-->


</body>
</html>