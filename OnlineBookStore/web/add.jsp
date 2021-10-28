

<%@page import="com.OnlineBookStore.entity.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="css/mycss.css" rel="stylesheet" type="text/css" />
        <title>add</title>
    </head>
    <body>
        <%@include file="adminNavBar.jsp"%>
         <main class="d-flex align-items-center" style="height: 80vh">
        <div class="container">
            <div class="row">
                <div class="col-md-5 offset-md-4">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center"><p>Your Book Detail</p></div>
                        
                        <div class="card-body">
                            <form>
                           <div class="form-group text-center" >
                               <img src="image/<%=Book.bookImage%>" width="250" height="150">
                           </div>
                                 <div class="form-group">
                                        <table class="table">
                                            <tbody>
                                               <tr>   
                                                <td>Book id</td>
                                                <td><%=Book.bookId%></td>
                                               </tr>
                                               <tr>     
                                                <td>Book Name</td>
                                                <td><%=Book.bookName%></td>
                                               </tr>
                                               <tr>   
                                                <td>Book Author Name</td>
                                                <td><%=Book.authorName%></td>
                                               </tr>
                                               <tr>    
                                                <td>Book Price</td>
                                                <td><%=Book.bookPrice%></td>
                                               </tr>
                                                <tr>    
                                                <td>Book PDF</td>
                                                <td><%=Book.bookPdf%></td>
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
