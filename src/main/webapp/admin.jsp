<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Page</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="css/bootstrap.min.css"
          integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/mycss.css">

</head>
<body>


<script src="js/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="js/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>

<!-- nav bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Admin page</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="admin.jsp">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Tables</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disable</a>
            </li>
        </ul>
        <!-- <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form> -->
    </div>
</nav>


<!-- Modal -->
<div class="modal fade" id="userModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add new user</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <%--input--%>
                <div>
                    <div id="error_message_user" style="display: none">

                    </div>

                    <div id="success_message_user" style="display: none">
                        User added!!!
                    </div>
                </div>

                <div class="input-group">
                    <input id="user_name_surname" type="text" class="form-control" placeholder="Name and Surname"
                           aria-label="Name and Surname"
                           aria-describedby="basic-addon1">
                </div>
                <br>
                <div class="input-group">
                    <textarea class="form-control" placeholder="Description" id="description"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="onClickUserSaveButton()">Save</button>
            </div>
        </div>
    </div>
</div>

<!-- buttons -->
<div class="btn-group" role="group" aria-label="Basic example">
    <button type="button" class="btn btn-secondary" onclick="user_button_click()">User table</button>
    <button type="button" class="btn btn-secondary" onclick="post_button_click()">Post table</button>
</div>

<div class="loader" id="loader_div" style="display: none">Loading...</div>

<div id="user_table_div" style="display: inline">

    <button type="button" onclick="add_user_button_click()" class="btn btn-info">Add User</button>

    <table class="table table-striped table-hover table-responsive" id="user_table">
        <thead class="thead-inverse">
        <tr>
            <th>ID</th>
            <th>Name and Surname</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>

</div>


<div id="post_table_div" style="display: inline">

    <button type="button" onclick="" class="btn btn-info">Add Post</button>

    <table class="table table-striped table-hover table-responsive" id="post_table">
        <thead class="thead-inverse">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Text</th>
            <th>Date</th>
            <th>Auther</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>

</div>


<script type="text/javascript">

    hide_post_table();
    hide_user_table();
    hide_loader();
    hide_user_alerts();


    function hide_user_alerts() {
        $("#error_message_user").alert('close');
        $("#success_message_user").alert('close');
    }

    function show_user_data() {
        call_user();
    }


    function add_user_button_click() {
        $('#userModal').modal({
            show: true
        })
    }

    function onClickUserSaveButton() {
        var xhr = new XMLHttpRequest();

        var nameAndSurname = $("#user_name_surname").val();
        var desc = $("#description").val();
        var body = JSON.stringify({"nameAndSurname": nameAndSurname, "desc": desc});
        xhr.open("POST", '/user/add', true);
        xhr.setRequestHeader('Content-Type', 'application/json');
//
        xhr.onreadystatechange = my_state;

        function my_state(e) {
            if (xhr.readyState == 4) {
                var response = JSON.parse(xhr.responseText);
                if (response["status"] == 5) {
                    console.log(response["status"]);
                    add_error_message_2_div(response["error"]);
                } else if (response["status"] == 200) {
                    console.log(response["status"]);
                    show_success_message();
                }
            }
        }


        function add_error_message_2_div(error_string) {
            var div = document.getElementById('error_message_user');
            div.innerHTML += error_string;
            div.style.display = 'inline';
        }

        function show_success_message() {
//            $('#success_message_user').show();
            document.getElementById('success_message_user').style.display = 'inline';
            //$("#success_message_user").alert()
        }

        xhr.send(body);
    }


    function call_user() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "http://localhost:8181/user_list", true);
        xhr.withCredentials = false;
        xhr.send();
        xhr.onreadystatechange = processRequest;
        function processRequest(e) {
            //show_loader();
            if (xhr.readyState == 4 && xhr.status == 200) {
                var response = JSON.parse(xhr.responseText);
                parse_user_data(response);
                //hide_loader();
            }// else {
            //console.log("error: " + e);
            //}
        }
    }

    function show_post_data() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "http://localhost:8181/post_list", true);
        xhr.withCredentials = false;
        xhr.send();
        xhr.onreadystatechange = processRequest;
        function processRequest(e) {
//            console.log("state=" + xhr.readyState);
            //show_loader();
            if (xhr.readyState == 4 && xhr.status == 200) {
                var response = JSON.parse(xhr.responseText);
                parse_post_data(response);
                //hide_loader();
            } else if (xhr.status != 200) {
                //show error
            }
        }
    }

    function parse_post_data(data) {
        for (var i = 0; i < data.length; i++) {
            $('#post_table').find('tbody').append("<tr><td>" +
                data[i].id + "</td><td>" +
                data[i].title + "</td><td>" +
                data[i].shortText + "...</td><td>" +
                data[i].date + "</td><td>" +
                data[i].user.nameAndSurname + "</td>" +
                create_raw_to_post_edit(data[i].id)
                + "</tr>");
        }
    }

    function parse_user_data(data) {
        for (var i = 0; i < data.length; i++) {
            $('#user_table').find('tbody').append("<tr><td>" +
                data[i].id + "</td><td>" +
                data[i].nameAndSurname + "</td><td>" +
                data[i].desc + "</td>" +
                create_raw_to_user_edit(data[i].id)
                + "</tr>");
        }
    }

    function create_raw_to_user_edit(id) {
        var action_raw = "<td><i onclick=" + "edit_user(" + id + ") class=" + "material-icons"
            + ">mode_edit</i><i onclick=" + "delete_user(" + id + ") class=" + "material-icons" + ">delete</i></td>";
        return action_raw;
    }

    function create_raw_to_post_edit(id) {
        var action_raw = "<td><i onclick=" + "edit_post(" + id + ") class=" + "material-icons"
            + ">mode_edit</i><i onclick=" + "delete_post(" + id + ") class=" + "material-icons" + ">delete</i></td>";
        return action_raw;
    }

    function delete_user(id) {
        console.log("id user =" + id);
    }

    function delete_post(id) {
        console.log("id post =" + id);
    }

    function edit_user(id) {
//        console.log("id user =" + id);
        //get user data
        get_user_by_id(id);
        //put into windows


    }

    function get_user_by_id(id) {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "http://localhost:8181/user/" + id, true);
        xhr.withCredentials = false;
        xhr.send();
        xhr.onreadystatechange = processRequest;
        function processRequest(e) {
            //show_loader();
            if (xhr.readyState == 4 && xhr.status == 200) {
                var response = JSON.parse(xhr.responseText);
                parse_user_data(response);
                //hide_loader();
            }// else {
            //console.log("error: " + e);
            //}
        }
    }

    function edit_post(id) {
        console.log("id post =" + id);
    }

    function clear_user_table() {
        var tableHeaderRowCount = 1;
        var table = document.getElementById('user_table');
        var rowCount = table.rows.length;
        for (var i = tableHeaderRowCount; i < rowCount; i++) {
            table.deleteRow(tableHeaderRowCount);
        }
    }

    function clear_post_table() {
        var tableHeaderRowCount = 1;
        var table = document.getElementById('post_table');
        var rowCount = table.rows.length;
        for (var i = tableHeaderRowCount; i < rowCount; i++) {
            table.deleteRow(tableHeaderRowCount);
        }
    }

    function show_user_table() {
        document.getElementById('user_table_div').style.display = 'block';
        clear_user_table();
        show_user_data();
    }

    function show_post_table() {
        document.getElementById('post_table_div').style.display = 'block';
        clear_post_table();
        show_post_data();
    }

    function show_loader() {
        document.getElementById('loader_div').style.display = 'grid';
    }

    function hide_loader() {
        document.getElementById('loader_div').style.display = 'none';
    }

    function hide_user_table() {
        document.getElementById('user_table_div').style.display = 'none';
    }
    function hide_post_table() {
        document.getElementById('post_table_div').style.display = 'none';
    }

    function user_button_click(argument) {
        hide_post_table();
        show_user_table();
    }

    function post_button_click(argument) {
        hide_user_table();
        show_post_table();
    }


</script>


</body>
</html>