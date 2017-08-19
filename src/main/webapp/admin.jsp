<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kanan :)</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">

</head>
<body>


<script src="js/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="js/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<!-- nav bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Admin page</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a>
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




<!-- buttons -->
<div class="btn-group" role="group" aria-label="Basic example">
    <button type="button" class="btn btn-secondary" onclick="get_user_data()">User table</button>
    <button type="button" class="btn btn-secondary" onclick="post_button_click()">Post table</button>
</div>

<!-- <div id="user_table" style="display: visible">
    <table class="table table-striped table-hover table-responsive">
        <thead class="thead-inverse">
            <tr>
                <th>ID</th>
                <th>Name Surname</th>
                <th>User desc</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td><i class="material-icons">mode_edit</i><i class="material-icons">delete</i></td>
            </tr>
        </tbody>
    </table>

</div> -->

<div id="user_table_div" style="display: inline">
    <table class="table table-striped table-hover table-responsive" id="user_table1" data-url="https://ipinfo.io/json" data-toggle="table" data-response-handler="responseHandler">
        <thead class="thead-inverse">
        <tr>
            <th>ip</th>
            <th>hostname</th>
            <th>city</th>
            <th>region</th>
            <th>country</th>
            <th>loc</th>
            <th>org</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>

</div>


<div id="post_table" style="display: inline">
    <table class="table table-striped table-hover table-responsive">
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
        <tr>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td><i class="material-icons" data-toggle="tooltip" data-placement="top" title="Edit">mode_edit</i><i class="material-icons" data-toggle="tooltip" data-placement="top" title="Delete">delete</i></td>
        </tr>
        </tbody>
    </table>

</div>




<script type="text/javascript">
    // hide_user_table();
    hide_post_table();



    function get_user_data(){
        // var xhr = new XMLHttpRequest();
        // xhr.open('GET', "http://data.e-gov.az/api/v1/IEGOVService.svc/GetGoodsListByName/alma", true);
        // xhr.withCredentials = false;
        // xhr.send();
        // xhr.onreadystatechange = processRequest;

        // function processRequest(e) {
        // 	console.log("state="+xhr.readyState);
        // 	console.log("status="+xhr.status);
        // 	if (xhr.readyState == 4 && xhr.status == 200) {
        // 		console.log("enter");
        //        	var response = JSON.parse(xhr.responseText);
        //        	parse_user_data(response.goodsInfoField);
        //        }else{
        //        	console.log("error");
        //        }
        //    }
        var request = new XMLHttpRequest();
        request.open("GET", "/data.json", false);
        parse_user_data(JSON.parse(data));
    }



    function parse_user_data(objects){


        // var str = "<tr>"
        // $.each(objects, function(index,value){
        // 	$('#user_table1 tbody').append("<tr><td>" +
        // 		this.value +"</td><td>" +
        // 		this.hostname + "</td><td>" +
        // 		this.city + "</td><td>" +
        // 		this.region + "</td><td>" +
        // 		this.country + "</td><td>" +
        // 		this.loc + "</td><td>" +
        // 		this.org + "</td>"
        // 		+"<tr>");
        // });

        $.each(objects, function(index, value) {
            // str+="<td>"+value+"</td>"
            console.log(index+" and "+value);
        });

        // str+="<tr>";
        // $('#user_table1 tbody').append(str);
    }

    function show_user_table(){
        document.getElementById('user_table').style.display = 'block';
    }
    function show_post_table(){
        document.getElementById('post_table').style.display = 'block';
    }

    function hide_user_table(){
        document.getElementById('user_table').style.display = 'none';
    }
    function hide_post_table(){
        document.getElementById('post_table').style.display = 'none';
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