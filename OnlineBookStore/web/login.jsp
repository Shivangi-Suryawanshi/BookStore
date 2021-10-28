<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <title>Login</title>
    </head>
    <body>
        <%@include file="normalnavbar.jsp"%>
       <main class="d-flex align-items-center" style="height: 75vh">
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center"><p>Login Here</p></div>
                        <div class="card-body">
                            <form action="loginServlet" id="loginF">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1">
                                </div>
                                
                                <button type="submit" class="btn btn-primary" id="Lbtn">Submit</button>
                                       <button type="submit" class="btn btn-primary" id="Ajaxbtn">S</button>
                                <div class="container" id="data"></div>
                                
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
     /* $(document).ready(function(){     
    $("#show1").hide(); 
       console.log("hello");
       
       
     $("#loginF").on('submit',function(event){
         event.preventDefault();
          console.log("Shivangi")
         var str1 = $("#exampleInputEmail1").val();
             console.log(str1)
              var str2 = $("#exampleInputPassword1").val();
             console.log(str2)
             if(str1=="admin@gmail.com" && str2=="abc")
             {
                  console.log("i am an admin ")
                  
           
                  
                  
                  
             }
           
     })
               $("#Ajaxbtn").click(function(){ 
           //console.log("good");
           //window.location.href = "adminHome.jsp";
         //  $("#Lbtn").hide();         
            // alert("This paragraph was clicked.");  
            // $("#show1").show();  
            
        //   document.getElementById("data").innerHTML="fdghjk";
        $.get("ajaxDemo.jsp" , function(about){
          //  console.log("welcome");
           document.getElementById("data").innerHTML=about;  
        });
        
    });
       
      }) ;  */
    </script>
    </body>
</html>
