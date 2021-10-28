
<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Book</title>
    </head>
    <body>
         <%
             try
             {
            String jspPath="C:\\Users\\dell\\Documents\\NetBeansProjects\\OnlineBookStore\\web\\pdfFiles\\";
            String fileName = "file.pdf";
            String txtFilePath = jspPath + fileName;
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            //BufferedReader br = new InputStreamReader(new FileInputStream(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"\n");
            }
           out.println(sb.toString()); 
           
         }catch(Exception e){
          e.printStackTrace();
         }
        %>

        
    </body>
</html>
