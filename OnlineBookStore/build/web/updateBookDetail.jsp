
<%@page import="com.OnlineBookStore.entity.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="css/mycss.css" rel="stylesheet" type="text/css" />
     
        <title>Update Details</title>
    </head>
    <body>
           <%@include file="adminNavBar.jsp"%>
             <main class="d-flex align-items-center" style="height: 80vh">
        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center"><p>Book Updation</p></div>
                        
                        <div class="card-body">
                            <form action="updateBookDetailServlet" method="POST" enctype="multipart/form-data">                          
                                 <div class="form-group">
                                        <table class="table">
                                            <tbody>
                                               <tr>   
                                                <td>Book id</td>
                                                <td><%=Book.bookId%></td>
                                               </tr>
                                               <tr>     
                                                <td>Book Name</td>
                                                <td><input type="text" name="book_name" value="<%=Book.bookName%>"></td>
                                               </tr>
                                               <tr>   
                                                <td>Author Name</td>
                                                <td><input type="text" name="author_name" value="<%=Book.authorName%>"></td>
                                               </tr>
                                               <tr>    
                                                <td>Book Price</td>
                                                <td><input type="text" name="book_price" value="<%=Book.bookPrice%>"></td>
                                               </tr>
                                                <tr> 
                                                <td>Book image</td>
                                                <td><%=Book.bookImage%></td>
                                                <td><input name="image_name"  type="file" multiple="true" value="Choose image"></td>
                                                </tr>
                                                <tr>
                                                <td>Book PDF</td>
                                                <td><%=Book.bookPdf%></td>
                                                <td><input name="pdf_name" type="file" multiple="true" value="Choose Book PDF"></td>
                                                </tr>
                                                <tr>
                                                <td><button type="submit" class="btn btn-primary text-center">Update</button></td>
                                               </tr>
                                            </tbody>
                                        </table>
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
