
package com.OnlineBookStore.entity;


public class Book {
    public static int bookId;
     public static String bookName;
     public static String authorName;
     public static String bookPrice;
     public static String bookImage;
     public static String bookPdf;

    public Book(String bookName, String authorName, String bookPrice, String bookImage, String bookPdf) {
        this.bookName = bookName;
        this.authorName = authorName;
        this.bookPrice = bookPrice;
        this.bookImage = bookImage;
        this.bookPdf = bookPdf;
    }

  

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(String bookPrice) {
        this.bookPrice = bookPrice;
    }

    public String getBookImage() {
        return bookImage;
    }

    public void setBookImage(String bookImage) {
        this.bookImage = bookImage;
    }

    public String getBookPdf() {
        return bookPdf;
    }

    public void setBookPdf(String bookPdf) {
        this.bookPdf = bookPdf;
    }

    public Book(int bookId, String bookName, String authorName, String bookPrice, String bookImage, String bookPdf) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.authorName = authorName;
        this.bookPrice = bookPrice;
        this.bookImage = bookImage;
        this.bookPdf = bookPdf;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public Book(String bookName, String authorName) {
        this.bookName = bookName;
        this.authorName = authorName;
        System.out.println(this.bookName+"            "+this.authorName);
    }

    
    
}
