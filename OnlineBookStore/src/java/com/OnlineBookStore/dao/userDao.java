
package com.OnlineBookStore.dao;
import com.OnlineBookStore.entity.user;
import java.sql.*;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class userDao {
    private Connection con;

    public userDao(Connection con) {
        this.con = con;
    }
    public void saveUser(user user)
    {
        try{
           
        String q="insert into user(name,email,password,status)values(?,?,?,?)";
     
          PreparedStatement ps = this.con.prepareStatement(q);
          ps.setString(1, user.getName());
          ps.setString(2, user.getEmail());
          ps.setString(3, user.getPassword());
          ps.setString(4, user.getGender());
          ps.executeUpdate();
        }catch(Exception e){
        e.printStackTrace();
        }
    }
    
    public int verifyIdPassword(user user)
    {
        
        try{
          String q="select * from user where email=? and password=?";   
          PreparedStatement ps = this.con.prepareStatement(q);
           ps.setString(1, user.getEmail());
           ps.setString(2, user.getPassword());
          ResultSet rs=ps.executeQuery();
         
          if(rs.next()){             
            String emaildb=rs.getString("email");
            String passworddb=rs.getString("password");           
            return 1;         
          }
          else{
          return 0;
          }
        }catch(Exception e){
          e.printStackTrace();
        }
        return 0;
    }
    

    public boolean sendMail(user user){
    boolean test=false;
    String fromEmail="shivangi96suryawanshi@gmail.com";
    String password="8349646388";
    String toEmail=user.getEmail();
    try{
    Properties pr=System.getProperties();
    pr.setProperty("mail.smtp.host" , "smtp.gmail.com");
    pr.setProperty("mail.smtp.port", "587");
    pr.setProperty("mail.smtp.auth", "true");
    pr.setProperty("mail.smtp.starttls.enable", "true");
    pr.put("mail.smtp.socketFactory.port", "587");
    pr.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    Session session=Session.getInstance(pr, new Authenticator(){
    @Override
    protected PasswordAuthentication getPasswordAuthentication(){
        
    return new PasswordAuthentication(fromEmail, password);
    
    }   
    });
    
    Message msg=new MimeMessage(session);
    msg.setFrom(new InternetAddress(fromEmail));
    msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
    msg.setSubject("Welcome message");
    msg.setText("Welcome "+user.getName()+" to Online Book Store");
    Transport.send(msg);
    test=true;
    
    }catch(Exception e){
    e.printStackTrace();
    }
    return test;
    }
    
}
