<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/btn.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <title>Αρχική</title>
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
                    <a class="button" href="index.jsp" style="text-decoration:none">Αρχική <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <button class="button" type="submit" id="movies" name="movies" value="showMovies">Ταινίες</button>
                </li>
                <li class="nav-item">
                    <a class="button" href="#cinema" style="text-decoration:none">Αίθουσες</a>
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
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="pictures/aiw3.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="pictures/blackkklansman.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="pictures/incr2.jpg" alt="Third slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="pictures/mi6.jpg" alt="Fourth slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="pictures/ocean8.jpg" alt="Fifth slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="pictures/tombraider.jpg" alt="Sixth slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </section>
        <section class="py-2" id="cinema">
            <div class="row">
                <div class="col-sm-6">
                    <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                        <div class="my-3 py-3">
                            <h4 class="text-primary">Αίθουσα 1</h4>
                            <p class="lead">Η κλασική εμπειρία του κινηματογράφου.</p>
                        </div>
                        <div class="bg-white shadow-sm mx-auto"
                             style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                            <img src="pictures/image004.jpg" style="width: 100%; height: 300px;">
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                        <div class="my-3 py-3">
                            <h2 class="text-primary">Gold Αίθουσα</h2>
                            <p class="lead">Δείτε την ταινία όπως και στο σπίτι σας</p>
                        </div>
                        <div class="bg-white shadow-sm mx-auto"
                             style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                            <img src="pictures/image001.jpg" style="width: 100%; height: 300px;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                        <div class="my-3 py-3">
                            <h2 class="text-primary">Αίθουσα kids</h2>
                            <p class="lead">Φτιαγμένο μόνο για παιδιά</p>
                        </div>
                        <div class="bg-white shadow-sm mx-auto"
                             style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                            <img src="pictures/image002.jpg" style="width: 100%; height: 300px;">
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
                        <div class="my-3 py-3">
                            <h2 class="text-primary">Θερινό Σινεμά</h2>
                            <p class="lead">Ταινία κάτω από τον καλοκαιρινό ουρανό</p>
                        </div>
                        <div class="bg-white shadow-sm mx-auto"
                             style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                            <img src="pictures/image003.JPG" style="width: 100%; height: 300px;">
                        </div>
                    </div>
                </div>
            </div>
        </section>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>
