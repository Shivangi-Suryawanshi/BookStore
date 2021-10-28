<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="css/mycss.css" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>Your Profile</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-light new-background">
             <div>
            <span class="fa fa-home"  class="btn-secondary" data-toggle="tooltip" data-placement="top" title="Home" id="home"></span>
            <a class="navbar-brand" href="#"> <span class="navbar-brand mb-0 h1"id="UName">   User Name     </span></a>
            </div>
        </nav>
        <main class="d-flex align-items-center" style="height: 92.3vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="card">
                            <div class="card-header text-dark text-center bg-light new-background">
                                <table class="table table-borderless">                                  
                                    <tbody> 
                                        <tr>                                          
                                            <td>Post   :</td> 
                                            <td>0</td>
                                            <td>Followers   :</td>
                                            <td>0</td>
                                            <td>Following   :</td>
                                            <td>0</td>
                                        </tr>
                                    </tbody>
                                </table>   
                            </div>
                       
                            <div class="card-body" id="viewProfile">
                                <form id="loginF">
                                    <div class="form-group text-center" >
                                        <img src="" width="250" height="150">
                                    </div>
                                </form>
                                <table class="table table-borderless text-center">                                  
                                    <tbody> 
                                        <tr>                                          
                                            <td> <label for="exampleInputPassword1">Location</label></td> 
                                            <td>   <label for="exampleInputPassword1">Password</label></td> <td>  </td>  <td>  </td>                                    
                                        </tr>
                                        <tr>                                          
                                            <td>Hobby   </td> 
                                            <td>    <label for="exampleInputPassword1">Password</label></td> <td> </td>                                         
                                        </tr>
                                        <tr>                                          
                                            <td>Favourite Book   </td> 
                                            <td>  <label for="exampleInputPassword1">Password</label></td> </td>                                         
                                        </tr>  <tr>                                          
                                            <td>Favourite Movie   </td> 
                                            <td><label for="exampleInputPassword1">Password</label></td> </td>                                         
                                        </tr>
                                        <tr>                                          
                                            <td>Favourite Song</td> 
                                            <td><label for="exampleInputPassword1">Password</label></td> <td></td> <td> </td>                                  
                                        </tr>
                                        <tr>                                          
                                            <td>Favourite Place</td> 
                                            <td>   <label for="exampleInputPassword1">Password</label></td><td> </td>                                         
                                        </tr>
                                    </tbody>
                                </table> 
                                <button type="button" class="btn btn-secondary btn-lg btn-block"id="edit">Edit Profile</button>
                            </div>                       
                        </div>
                    </div>
                </div>
            </div> 
        </main>



        <main class="d-flex align-items-center" style="height: 92.3vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="card">
                            <div class="card-header text-dark text-center bg-light new-background">
                                <table class="table table-borderless">                                  
                                    <tbody> 
                                        <tr>                                          
                                            <td>Post   :</td> 
                                            <td>0</td>
                                            <td>Followers   :</td>
                                            <td>0</td>
                                            <td>Following   :</td>
                                            <td>0</td>
                                        </tr>
                                    </tbody>
                                </table>   
                            </div>
                            <div class="card-body" id="editProfile">
                                <form id="loginF">
                                    <div class="form-group text-center" >
                                        <img src="" width="250" height="150">
                                        <input name="image_name"  type="file"  value="Change Profile Photo">
                                    </div>
                                </form>
                                <table class="table table-borderless text-center">                                  
                                    <tbody> 
                                        <tr>                                          
                                            <td> <label>Location</label></td> 
                                            <td><input type="text" name="book_name" value="NA"></td> <td>  </td>  <td>  </td>                                    
                                        </tr>
                                        <tr>                                          
                                            <td>Hobby   </td> 
                                            <td><input type="text" name="book_name" value="NA"></td></td> <td> </td>                                         
                                        </tr>
                                        <tr>                                          
                                            <td>Favourite Book   </td> 
                                            <td><input type="text" name="book_name" value="NA"></td></td> </td>                                         
                                        </tr>  <tr>                                          
                                            <td>Favourite Movie   </td> 
                                            <td><input type="text" name="book_name" value="NA"></td></td> </td>                                         
                                        </tr>
                                        <tr>                                          
                                            <td>Favourite Song</td> 
                                            <td><input type="text" name="book_name" value="NA"></td></td> <td></td> <td> </td>                                  
                                        </tr>
                                        <tr>                                          
                                            <td>Favourite Place</td> 
                                            <td><input type="text" name="book_name" value="NA"></td></td><td> </td>                                         
                                        </tr>
                                    </tbody>
                                </table> 
                                <button type="button" class="btn btn-secondary btn-lg btn-block" id="savea">Save Change</button>
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
            
     console.log("1");
                $(document).ready(function () {
                    $("#home").click(function () {
                             console.log("2");
                    window.location.href = "fbUserHome.jsp";
                });
            });
        </script>
    </body>
</html>
