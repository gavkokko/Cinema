<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Κράτηση Εισιτηρίων</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/btn.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
                    <a class="button" href="index.jsp" style="text-decoration:none" value="ignore" formnovalidate>Αρχική
                        <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <button class="button" type="submit" name="movies" value="ignore" formnovalidate>Ταινίες</button>
                </li>
                <li class="nav-item">
                    <a class="button" href="index.jsp#cinema" style="text-decoration:none" value="ignore"
                       formnovalidate>Αίθουσες</a>
                </li>
                <li class="nav-item">
                    <a class="button" href="aboutus.jsp" style="text-decoration:none" value="ignore" formnovalidate>Πληροφορίες</a>
                </li>
            </ul>
        </div>
    </nav>
</form>
<div class="container" style="background-color: white">
    <div class="container">
        <section class="py-5"></section>
        <div class="py-5">
            <h2 class="text-center">Φόρμα Πληρωμής</h2>
        </div>
        <form class="needs-validation" action="/ControllerServlet" method="post" novalidate>
            <div class="row">
                <div class="col-md-6 offset-sm-1">
                    <h4 class="mb-3">Στοιχεία: </h4>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName">Όνομα: </label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="" autocomplete="off" required>
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName">Επώνυμο: </label>
                            <input type="text" class="form-control" id="lastName" placeholder="" autocomplete="off" value="" required>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="email">Email: <span class="text-muted">(Παρακαλώ συμπληρώστε)</span></label>
                        <input type="email" class="form-control" id="email" placeholder="you@example.com" required>
                        <div class="invalid-feedback">
                            Please enter a valid email address for shipping updates.
                        </div>
                    </div>
                    <h4 class="mb-3">Τρόποι πληρωμής</h4>
                    <div class="d-block my-3">
                        <div class="custom-control custom-radio">
                            <input id="cash" name="paymentMethod" type="radio" onclick="radios()"
                                   class="custom-control-input" required>
                            <label class="custom-control-label" for="cash">Μετρητά</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input id="credit" name="paymentMethod" type="radio" onclick="radios()"
                                   class="custom-control-input"
                                   required>
                            <label class="custom-control-label" for="credit">Πιστωτική κάρτα</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input id="debit" name="paymentMethod" type="radio" onclick="radios()"
                                   class="custom-control-input" required>
                            <label class="custom-control-label" for="debit">Χρεωστική κάρτα</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input id="paypal" name="paymentMethod" type="radio" onclick="radios()"
                                   class="custom-control-input" required>
                            <label class="custom-control-label" for="paypal">PayPal</label>
                        </div>
                    </div>
                    <div class="showContent" style="display: none" id="divtohide">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="cc-name">Name on card</label>
                                <input type="text" class="form-control" id="cc-name" placeholder="" autocomplete="off" required>
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="cc-number">Credit card number</label>
                                <input type="password" class="form-control" id="cc-number" placeholder="" autocomplete="off" required>
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="cc-expiration">Expiration</label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" autocomplete="off" required>
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="cc-cvv">CVV</label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" autocomplete="off" required>
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="mb-4">
                    <button class="btn btn-primary btn-lg btn-block" id="bookButton" name="bookButton" type="submit">
                        Κράτηση
                    </button>
                </div>
                <div class="col-md-4">
                    <h4 class="mb-3">Εισιτήρια: </h4>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Πλήθος</label>
                        </div>
                        <select class="custom-select" id="inputGroupSelect01" autocomplete="off" name="inputGroupSelect01"
                                onclick="calculatePrice()">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>

                        </select>
                    </div>
                    <h4 class="mb-3">Ημερομηνία: </h4>
                    <div class="form-group">
                        <div class="col-xs-5 date">
                            <div class="input-group input-append date" id="datePicker">
                                <input type="text" class="form-control" id="datePicker1" autocomplete="off" name="date" required/>
                                <span class="input-group-addon add-on"><span
                                        class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                        </div>
                    </div>
                    <div class="bg-light">
                        <h4 class="mb-3">Κόστος: </h4>
                        <p>Ποσό: </p>
                        <p id="cost">0</p>
                    </div>
                </div>
            </div>
        </form>

    </div>
    <section class="py-4"></section>
</div>
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
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/holder.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css"/>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css"/>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
<script>
    $(document).ready(function () {
        $('#datePicker')
            .datepicker({
                format: 'mm/dd/yyyy'
            })
            .on('changeDate', function (e) {
                $('#eventForm').formValidation('revalidateField', 'date');
            });

        $('#eventForm').formValidation({
            framework: 'bootstrap',
            icon: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                name: {
                    validators: {
                        notEmpty: {
                            message: 'The name is required'
                        }
                    }
                },
                date: {
                    validators: {
                        notEmpty: {
                            message: 'The date is required'
                        },
                        date: {
                            format: 'MM/DD/YYYY',
                            message: 'The date is not a valid'
                        }
                    }
                }
            }
        });
    });
</script>
<script>
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            var forms = document.getElementsByClassName('needs-validation');
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
<script>
    function radios() {
        var rbtn = document.getElementsByName("paymentMethod");
        var div = document.getElementById("divtohide");
        var input1 = document.getElementById("cc-name");
        var input2 = document.getElementById("cc-number");
        var input3 = document.getElementById("cc-expiration");
        var input4 = document.getElementById("cc-cvv");
        if (rbtn[0].checked) {
            div.style.display = "none";
            input1.required = false;
            input2.required = false;
            input3.required = false;
            input4.required = false;
        } else if (rbtn[1].checked) {
            div.style.display = "block";
        }
        else if (rbtn[2].checked) {
            div.style.display = "block";
        }
        else if (rbtn[3].checked) {
            div.style.display = "block";
        }
    }
</script>
<script type="text/javascript">
    $(function calculatePrice() {
        var elt = document.getElementById("inputGroupSelect01");
        var memory = elt.options[elt.selectedIndex].value;
        memory = parseInt(memory);
        var total = memory * 5.5;
        $("#cost").text(total.toString());
        $('#inputGroupSelect01').on('click', function (e) {
            e.preventDefault();
            var elt = document.getElementById("inputGroupSelect01");
            var memory = elt.options[elt.selectedIndex].value;
            memory = parseInt(memory);
            var total = memory * 5.5;
            $("#cost").text(total.toString());
        });
    });
</script>
<script type="text/javascript">
    //oxi proigoumenes meres
    $(function () {
        $('#datePicker1').datepicker({
            startDate: 'd'
        });
    });
</script>
</body>
</html>
