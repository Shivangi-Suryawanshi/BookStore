package com.OnlineBookStore.dao;

import com.OnlineBookStore.entity.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class bookDao {

    
    private Connection con;

    public bookDao(Connection con) {
        this.con = con;
    }
    public void saveBook(Book book){
     try{
           
        String q="insert into book_deatil(name,author,price,bookimage,book_pdf)values(?,?,?,?,?)";
     
          PreparedStatement ps = this.con.prepareStatement(q);
          ps.setString(1, book.getBookName());
          ps.setString(2, book.getAuthorName());
          ps.setString(3, book.getBookPrice());
          ps.setString(4, book.getBookImage());
          ps.setString(5, book.getBookPdf());
          ps.executeUpdate();
        }catch(Exception e){
        e.printStackTrace();
        }
    
     
    }
    
    public void getBookDetail(Book book){
        try{
           String q="select * from book_deatil where name=? and author=?";   
           PreparedStatement ps = this.con.prepareStatement(q);
           ps.setString(1, book.getBookName());
          
           ps.setString(2, book.getAuthorName());
           ResultSet rs=ps.executeQuery();
            System.out.println("from user*********" +book.getBookName());
            System.out.println("from data base %%%%%%%%%%%%"+book.getAuthorName());
           if(rs.next()){
         String id=rs.getString(1);
         String bname=rs.getString(2);
         String aname=rs.getString(3);
         String bprice=rs.getString(4);
         String bImage=rs.getString(5);
         String bPDF=rs.getString(6);
    System.out.println("from user*********" +book.getBookName());
    System.out.println("from data base %%%%%%%%%%%%"+bprice);
         book.setBookId(Integer.parseInt(id));
         book.setBookName(bname);
         book.setAuthorName(aname);
         book.setBookPrice(bprice);
         book.setBookImage(bprice);
         book.setBookImage(bImage);
         book.setBookPdf(bPDF);
           }
      }catch(Exception e){
      e.printStackTrace();
      }
    }
     public void updateBookDetail(Book book){
        try{
           String q="update book_deatil set name=?, author=?, price=?, bookimage=?, book_pdf=? where id=?";   
           PreparedStatement ps = this.con.prepareStatement(q);
           ps.setString(1, book.getBookName());
           ps.setString(2, book.getAuthorName());
           ps.setString(3, book.getBookPrice());
            ps.setString(4, book.getBookImage());
             ps.setString(5, book.getBookPdf());
              ps.setString(6, Integer.toString(book.bookId));
                  ps.executeUpdate();
          // ResultSet rs=ps.executeUpdate();
            System.out.println("from user*********" +book.getBookName());
            System.out.println("from data base %%%%%%%%%%%%"+book.getAuthorName());
           
      }catch(Exception e){
      e.printStackTrace();
      }
    }
     
     public void delete(Book book)
     {
     try{
      String q="delete from book_deatil where name=? and author=?";   
           PreparedStatement ps = this.con.prepareStatement(q);
           ps.setString(1, book.getBookName());
          
           ps.setString(2, book.getAuthorName());
         ps.executeUpdate();
     }
     catch(Exception e){
     e.printStackTrace();
     }
     }
}
