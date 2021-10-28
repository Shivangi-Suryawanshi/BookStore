<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <title>Search and Buy Book</title>
    </head>
    <body>
     <%@include file="clientNavbar.jsp"%>
             <main class="d-flex align-items-center" style="height: 70vh">
        <div class="container">
            <div class="row">
                <div class="col-md-5 offset-md-4">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center"><p>Serach - Buy Book</p></div>
                        <div class="card-body">
                            <form id="s-form" action="buyServlet" method="POST">
                                 <div class="form-group">
                                    <label for="exampleInputName">Enter Book Name</label>
                                    <input name="book_name" type="text" class="form-control" id="exampleInputName" placeholder="Book">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Enter Author Name</label>
                                    <input name="author_name" type="text" class="form-control" id="exampleInputEmail1" placeholder="Author">
                                   
                                </div>                               
                                 <div class="container">
                                <button type="submit" class="btn btn-primary align-items-center">Search</button>
                                 </div>
                            </form>             
                        </div>
                    </div>
                </div>
            </div>
        </div> 
       </main>
        
        
    </body>
</html>
