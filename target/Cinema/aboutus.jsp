<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Πληροφορίες</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/btn.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
</head>
<body class="bg-dark">
<form action="/ControllerServlet" method="post">
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary">
        <h2 style="color: #e2ddf1" style="margin-left: 1000px">Cinema </h2>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01"
                aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor01" style="margin-left: 150px">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="button" href="index.jsp" style="text-decoration:none">Αρχική <span
                            class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <button class="button" type="submit" name="movies" value="showMovies">Ταινίες</button>
                </li>
                <li class="nav-item">
                    <a class="button" href="index.jsp#cinema" style="text-decoration:none">Αίθουσες</a>
                </li>
                <li class="nav-item">
                    <a class="button" href="aboutus.jsp" style="text-decoration:none">Πληροφορίες</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container" style="background-color: white">
        <section class="py-3"></section>
        <section class="py-5">
            <div class="row">
                <div class="col-sm-6 offset-sm-6">
                    <p>
                    <h3 class="text-primary" style="margin-right: 100px">Βρείτε μας στο χάρτη</h3> </p>
                </div>
            </div>
        </section>
        <div class="row">
            <div class="col-sm-5 offset-sm-1">
                <h4 class="text-primary"> Διεύθυνση: </h4>
                <p> Παλαιά Λεωφόρος Ποσειδώνος 1 & Μωραϊτίνη 3 </p>
                <h4 class="text-primary"> Ωράριο Λειτουργίας: </h4>
                <p> Δευτέρα - Παρασκευή: 17:00 - 23:00 </p>
                <p> Σάββατο: 15:00 - 01:00</p>
            </div>
            <div class="col-sm-6">
                <div id="map-canvas" style="height:300px; width:500px"></div>
            </div>
        </div>
        <section class="py-5"></section>
    </div>
</form>
<footer class="py-5 bg-light">
    <div class="row">
        <div class="span6" style="float: none; margin: 0 auto;">
            <img src="pictures/concept-videos.png" width="64" height="64">&nbsp;&nbsp;&nbsp;
            <img src="pictures/cinema.png" width="64" height="64">&nbsp;&nbsp;&nbsp;
            <img src="pictures/popcorn.png" width="64" height="64">&nbsp;&nbsp;&nbsp;
            <img src="pictures/3d.png" width="64" height="64">
        </div>
    </div>
    <br><br><br>
    <div class="row">
        <div class="span6" style="float: none; margin: 0 auto;">
            <a href="aboutus.jsp"> ΠΛΗΡΟΦΟΡΙΕΣ</a>
        </div>
    </div>
    <br><br><br>
    <div class="row">
        <div class="span6" style="float: none; margin: 0 auto;">
            <div class="container">
                <form>
                    <h3 class="text-primary">Βρείτε μας στα social media: </h3>
                    <div class="row">
                        <div class="span6" style="float: none; margin: 0 auto;">
                            <a href="#" class="fa fa-facebook"></a>&nbsp;&nbsp;
                            <a href="#" class="fa fa-google"></a>&nbsp;&nbsp;
                            <a href="#" class="fa fa-instagram"></a>&nbsp;&nbsp;
                            <a href="#" class="fa fa-linkedin"></a>&nbsp;&nbsp;
                            <a href="#" class="fa fa-pinterest"></a>&nbsp;&nbsp;
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <br><br><br>
    <div class="row">
        <div class="span6" style="float: none; margin: 0 auto;">
            <small class="m-0 text-center text-dark">Copyright &copy; Cinema 2018 Πληροφοριακά Συστήματα</small>
        </div>
        <br/>
    </div>
</footer>
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCPAi6PbjFGG3ap6F-PGunukW0eyI7EfEc'></script>

<script type='text/javascript'>function init_map() {
    var myOptions = {
        zoom: 15,
        center: new google.maps.LatLng(37.9348033, 23.693179399999963),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById('map-canvas'), myOptions);
    marker = new google.maps.Marker({map: map, position: new google.maps.LatLng(37.9348033, 23.693179399999963)});
    infowindow = new google.maps.InfoWindow({content: '<strong>Χάρτης</strong><br>Παλαιά Λεωφόρος Ποσειδώνος 1 & Μωραϊτίνη 3<br> <br>'});
    google.maps.event.addListener(marker, 'click', function () {
        infowindow.open(map, marker);
    });
    infowindow.open(map, marker);
}

google.maps.event.addDomListener(window, 'load', init_map);</script>
</body>
</html>