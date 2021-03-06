<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Επικύρωση</title>
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
                    <a class="button" href="index.jsp" style="text-decoration:none">Αρχική <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <button class="button" type="submit" id="movies" name="movies" value="showMovies">Ταινίες</button>
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
        <section class="py-5"></section>
        <section class="py-5">
            <div class="row">
                <div class="span6" style="float: none; margin: 0 auto;">
                    <div class="row">
                        ${requestScope.passvar}
                    </div><br>
                    <img src="pictures/ok.png" width="128" height="128">
                </div>
            </div>
        </section>
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
</body>
</body>
</html>
