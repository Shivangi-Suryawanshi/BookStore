<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <title>Add Book</title>
    </head>
    <body>
      <%@include file="adminNavBar.jsp"%>

        <main class="d-flex align-items-center" style="height: 75vh">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center"><p>Add Book</p></div>
                        <div class="card-body">
                            <form id="reg-form" action="addNewBookServlet" method="POST" enctype="multipart/form-data">
                                 <div class="form-group">
                                    <label>Book Name</label>
                                    <input name="book_name" type="text" class="form-control"  placeholder="Enter Name">
                                </div>
                                <div class="form-group">
                                    <label>Author Name</label>
                                    <input name="author_name" type="text" class="form-control"  placeholder="Enter Name">
                                   
                                </div>
                                <div class="form-group">
                                    <label >Book Price</label>
                                    <input name="book_price" type="text" class="form-control"  placeholder="Book Price">
                                </div>
                                 <div class="form-group">
                                    <label>Book image</label>                                    
                                    <input name="image_name" type="file" multiple="true" value="Choose image">                                  
                                </div>
                                   <div class="form-group">
                                    <label>Book PDF</label>                                 
                                    <input name="pdf_name" type="file" multiple="true" value="Choose Book PDF">
                                </div>
                                 <div class="container">
                                <button type="submit" class="btn btn-primary align-items-center">Save</button>
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    </body>
</html>
