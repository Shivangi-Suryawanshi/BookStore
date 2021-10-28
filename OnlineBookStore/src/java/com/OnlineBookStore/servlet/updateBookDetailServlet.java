/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.OnlineBookStore.servlet;

import com.OnlineBookStore.dao.bookDao;
import com.OnlineBookStore.entity.Book;
import com.OnlineBookStore.helper.connectionGet;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author dell
 */
@MultipartConfig
public class updateBookDetailServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateBookDetailServlet</title>");            
            out.println("</head>");
            out.println("<body>");
              String bookName=request.getParameter("book_name");
            String authorName=request.getParameter("author_name");
            String bookPrice=request.getParameter("book_price");
            Part partImage=request.getPart("image_name");
            
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"+partImage);
            String imageName=partImage.getSubmittedFileName();
            System.out.println(imageName);
            Part partPdf=request.getPart("pdf_name");
            System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"+partPdf);
            String pdfName=partPdf.getSubmittedFileName();
            if(imageName.equals("")){imageName=Book.bookImage;}
            if(pdfName.equals("")){ pdfName=Book.bookPdf;}
            InputStream isimage=partImage.getInputStream();
            InputStream ispdf=partPdf.getInputStream();
            
            String pathImage="C:\\Users\\dell\\Documents\\NetBeansProjects\\OnlineBookStore\\web\\"+"image"+File.separator+imageName;
            String pathPdf="C:\\Users\\dell\\Documents\\NetBeansProjects\\OnlineBookStore\\web\\"+"pdfFiles"+File.separator+pdfName;
            
            boolean successImg=uploadImageFile(isimage,pathImage);
            boolean successPdf=uploadPdfFile(ispdf,pathPdf);
            
            
            if(successPdf){
            System.out.println("file uploaded pdf= "+pathPdf);
            }else{
            System.out.println("error");
            }
            if(successImg){
            System.out.println("file uploaded img= "+pathImage);
        
            }else{
            System.out.println("error");
            }
            bookDao bookdao=new bookDao(connectionGet.getcon());
            Book book =new Book(bookName,authorName,bookPrice,imageName,pdfName);
            bookdao.updateBookDetail(book); 
            
             response.sendRedirect("searchBook");
          
             
            out.println("</body>");
            out.println("</html>");
        }
    }
    public boolean uploadImageFile(InputStream is,String path){
            boolean test=false;            
            try{
            byte[] byt=new byte[is.available()];
            is.read(byt);
            FileOutputStream fos1=new FileOutputStream(path);
            fos1.write(byt);
            fos1.flush();
            fos1.close();
            test=true;
            }
            catch(Exception e){
               e.printStackTrace();
            }
            return test;
            }
     
          public boolean uploadPdfFile(InputStream is,String path){
            boolean test=false;
            
            try{
            byte[] byt=new byte[is.available()];
            is.read(byt);
            FileOutputStream fos=new FileOutputStream(path);
            fos.write(byt);
            fos.flush();
            fos.close();
            test=true;
            }
            catch(Exception e){
               e.printStackTrace();
            }
            return test;
            }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
