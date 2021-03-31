<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Create a Discussion Group</title>
    <style>
        td{
            border:thin solid black;
            padding-left: 5px;
            padding-right: 15px;
        }
        th{
            text-align: left;
        }
        .nav a:hover{
                    background-color: #F8D7FD;
                    color: black;
                }
                .nav a.active {
                    background-color: #F8D7FD;
                    color: black;
                }
        .nav a {

          float: left;
          display: block;
          color: black;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 17px;
        }
        h2 {
          text-decoration: underline overline dotted black;
        }

        .nav {
          overflow: hidden;
        }
        .content {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 10px;
            height: 100%;
        }
        body {
            background-color: #F8D7FD;
        }
    </style>
</head>
<body>
<div class="content">
    <nav class="nav" id ="myNav">
        <a href="/admin">Dashboard</a>
        <a href="/discussion" class="active">Discussion Groups</a>
        <a href="/feedback">Feedback Module</a>
    </nav>
    <h1>Create a Discussion Group</h1>

    <form id="dis" action="/discussion" method="POST">
        <input id="search" type="text" placeholder="Search.." name="searchBar">
        <button id="searchButton" type="submit"><i class="fa fa-search"></i></button><br>
        <input class="input-text" placeholder="Group Name" name="groupname" type="text"><br>
        <input class="input-text" placeholder="Email" name="email" type="text"><br>
        <input class="input-submit" value="Create Discussion Group" type="submit">
    </form>
    <#if discussionGroups??>
        <table>
            <tr>
                <th>Discussion Group ID</th>
                <th>Name</th>
                <th>Owner</th>
                <th>Link</th> <!-- Users can click on the link to view the discussion page, and either join or request for access -->
            </tr>
            <#list discussionGroups as discussionGroup>
                <tr>
                    <td>${discussionGroup.discussionID}</th>
                    <td>${discussionGroup.groupName}</th>
                    <td>${discussionGroup.userEmail}</th>
                    <td><a href="#">Link</a></th>
                </tr>
            </#list>
        </table>
    </#if>

    </div>
</body>
<script>
    var sBtn = document.getElementById("searchButton");
    var searchBar = document.getElementById("search");
    sBtn.addActionListener("click", function() {
        searchBar.name="searchBar";
    })
</script>
</html>