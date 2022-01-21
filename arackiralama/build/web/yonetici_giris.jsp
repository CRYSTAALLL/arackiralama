<%-- 
    Document   : yonetici_giris
    Created on : 16.Ara.2021, 22:14:52
    Author     : GULCİN
--%>

<%@page import="data.User"%>
<%@page import="database.DBUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/giris.css" type="text/css"/>
</head>
<body>

<div class="background-wrap">
  <div class="background"></div>
</div>

<form id="accesspanel" action="" method="get">
  <h1 id="litheader">GÜLÇİN OTOMOTİV</h1>
  <div class="inset">
    <p>
      <input type="text" name="email" id="email" placeholder="Email address">
    </p>
    <p>
      <input type="password" name="sifre" id="password" placeholder="Access code">
    </p>
    <div style="text-align: center;">
       
      
    </div>
    <input class="loginLoginValue" type="hidden" name="giris" value="login" />
  </div>
  
  <p>
       <input style="margin-left: 20px; margin-bottom: 15px;" type="checkbox" name="remember" id="remember">
           <label>Beni Hatırla</label>
  </p>
  
  <p class="p-container">
      

    <input type="submit" name="Login" id="go" value="Login"/>
  </p>
</form>

    <%
        DBUser data = new DBUser();
        String mail = request.getParameter("email");
        String sifre = request.getParameter("sifre");
        String giris = request.getParameter("giris");
        Cookie ckMail = null;
        Cookie ckSifre = null;
        Cookie ckDurum = null;
        String name = "";
        String pass = "";
         HttpSession oturum = request.getSession(true);
        oturum.setAttribute("Ymail", mail);
        boolean durum = request.getParameter("remember") != null;
     //3 cookie oluşturdum  
        
if(giris != null && !mail.equals("") && !sifre.equals("")){
             ckDurum = new Cookie("durum", "true");
             ckMail = new Cookie("mail", mail);
             ckSifre = new Cookie("sifre", sifre);
    
    
}
//cookie tipinde bir dizi oluşturuldu ve cookiler diziye atıldı
         Cookie[] allCookies = request.getCookies();
         if (allCookies != null) {
 //cookiler dizisi dolanıldı teker teker mail ve şifre değerleri değişkenlere atandı
             for(Cookie cook: allCookies){
                     if(cook.getName().equalsIgnoreCase("mail")){
                         name = cook.getValue();
                     }
                     else if(cook.getName().equalsIgnoreCase("sifre")){
                         pass = cook.getValue();
                     }
                 }
             }
//beni hatırla butonuna basıldıysa bir dahaki girişte direk yönetici sayfasına yönlendiriyor
        if(allCookies != null){
             for(int i = 0; i < allCookies.length; i++){
             if(allCookies[i].getValue().contains("true")){
                      response.sendRedirect(request.getContextPath() + "/yonetici.jsp");
                      break;
                  }
             else{
                 System.out.println("bulunamadi");
             }
         }
         }
        
if(giris != null && !mail.equals("") && !sifre.equals("")){
    data.yonetici_vericek(mail, sifre);
            if(DBUser.entry_permit){
 //cookie ayarlamaları yapıldı
                if(durum){
                    
                         ckDurum.setMaxAge(1000);
                         response.addCookie(ckDurum);
                         ckMail.setMaxAge(1000);
                         response.addCookie(ckMail);
                         ckSifre.setMaxAge(1000);
                         response.addCookie(ckSifre);
                }
                response.sendRedirect("yonetici.jsp");
            }
            
    
    
}
        




    %>
    

	

</body>
</html>

