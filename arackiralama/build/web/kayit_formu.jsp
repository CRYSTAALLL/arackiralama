<%-- 
    Document   : kayit_formu
    Created on : 16.Ara.2021, 22:15:27
    Author     : GÜLÇİN
--%>

<%@page import="database.DBUser"%>
<%@page import="data.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
       <link rel="stylesheet" href="style/kayıt_ol.css">
        <title>FORM KONTROL</title>
  </head>
    <body>
        
        
        
    <div class="dıs"> 
        
        <h2 class="bas">KAYIT FORMU</h2>
        
      <form  action="" method="post"> <!--kulllanıcı bilgilerini veritabanına yazdir -->
        <h2 class="bas">KAYIT FORMU</h2>
        
          <input class="ad" name="firstname" placeholder="Adınız" type="text"  >
       
          <input class="soyad" name="lastname" placeholder="Soyadınız" type="text"  >
       
          <input class="tel" name="number" placeholder="Telefon(555-555-55-55)" type="tel"  >
       
          <input class="mail" name="email" placeholder="E-posta" type="email"  >
          
          <input class="pw1" name="password1" placeholder="Şifre" type="password"  >
          
          <input class="pw2" name="password2" placeholder="Şifreyi Tekrar Giriniz" type="password"  >
          
          <button class="btn" name="submit" type="submit" id="contact-submit" data-submit="...Sending">Kaydı Gönder</button>
          
          

        
      </form>
    </div>
    
    <%   
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone_number = request.getParameter("number");
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String kytbtn = request.getParameter("submit");
        String geribtn = request.getParameter("geri");
        
        User user= new User(firstname, lastname, phone_number, email, password1, password2);
        DBUser bduser = new DBUser();
        
        

        if(kytbtn !=null){
            
            if(!firstname.equals("") && !lastname.equals("") && 
                    !phone_number.equals("") && 
                    !email.equals("") && !password1.equals("") &&
                    !password2.equals("")){
                bduser.insert(user);
                response.sendRedirect("index.jsp");
            }
            
           
            
        }
        if(geribtn !=null){
            
            response.sendRedirect("index.jsp");
            
        }
    %>
    
    
    </body>
</html>
