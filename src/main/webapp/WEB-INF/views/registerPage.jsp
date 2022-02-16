<!doctype html>
<%@ page isELIgnored="false" %>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Register Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>

    <!-- Navbar2 -->
	<%@ include file="./navbar2.jsp" %>


    <!-- Login form start -->


    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <form action="registerHandler" method="post">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Name</label>
                        <input type="text" name="userName" class="form-control" id="exampleFormControlInput1"
                            placeholder="Enter Your Name">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput2">Email</label>
                        <input type="email" name="userEmail" class="form-control" id="exampleFormControlInput2"
                            placeholder="example@gmail.com">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput3">Password</label>
                        <input type="password" class="form-control" id="exampleFormControlInput3"
                            name="userPassword" placeholder="Enter Your Password">
                    </div>
                    <div class="form-group">
                        Gender:
                        <input type="radio" name="userGender" value="male"> Male
                        <input type="radio" name="userGender" value="female"> female
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput4">State</label>
                        <input type="text" name="userState" class="form-control" id="exampleFormControlInput4"
                            placeholder="Enter Your State">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput5">City</label>
                        <input type="text" name="userCity" class="form-control" id="exampleFormControlInput5"
                            placeholder="Enter Your City">
                    </div>
                    <div class="text-center">
                        <button type="reset" class="btn btn-outline-danger">Reset</button>
                        <button type="submit" class="btn btn-outline-success">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Login form end -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>

</html>