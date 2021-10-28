<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>User home</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-light new-background ">
            <div>
                <span class="fa fa-home"  class="btn-secondary" data-toggle="tooltip" data-placement="top" id="Home"></span>
               
                <a class="navbar-brand" href="#"> <span class="navbar-brand mb-0 h1" id="UName">   User Name     </span></a>
            </div>
            <div align="center">
                <input class="form-control mr-sm-2" type="search" placeholder="Find Friend" aria-label="Search"></div><div>
                <button type="button" class="btn btn-success" >Search</button>
         <span class="fa fa-bell"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Notification" id="notification" ></span>
               <span class="fa fa-user-circle"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="See Profile" id="profile" ></span>
               <span class="fa fa-sign-out"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Logout" id="logout"></span>
            </div>
        </nav>

        <div align="left">
            Post   : 
            <input name="image_name"  type="file"  value="Select Post">
            <button type="file" class="btn btn-primary" id="Bbtn">Upload Post</button>
        </div>

        <main class="d-flex align-items-center" style="height: 45.5vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-header new-background text-white"><p>Posted By</p></div>
                            <div class="card-body">
                                <form id="loginF">
                                    <div class="form-group text-center">

                                        <img src="" width="250" height="250">

                                    </div>
                                    <div class="card-footer new-background text-white">
                                        <span class="fa fa-heart-o"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Likes" id="like"></span>
                                        <small>0</small>
                                        <span class="fa fa-comments-o" class="btn-secondary" data-toggle="tooltip" data-placement="left" title="Comment" id="like"></span>   
                                        <small>0</small>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </main>
        <script  src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <script>
              $(document).ready(function () {
                   $("#notification").click(function () {
                             console.log("2");
                    window.location.href = "fbUserProfile.jsp";
                });
                  
                    $("#profile").click(function () {
                             console.log("2");
                    window.location.href = "fbUserProfile.jsp";
                });
                
                 $("#logout").click(function () {
                             console.log("2");
                    window.location.href = "fbHome.jsp";
                });
            });
        </script>
    </body>
</html>
