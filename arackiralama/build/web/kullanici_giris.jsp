<%@page import="database.DBUser"%>
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



<form id="accesspanel" action="" method="post">
  <h1 id="litheader">GÜLÇIN OTOMOTIV</h1>
  <div class="inset">
    <p>
      <input type="text" name="email_load" id="email" placeholder="Email address">
    </p>
    <p>
      <input type="password" name="password_load" id="password" placeholder="Access code">
    </p>
    <div style="text-align: center;">
      
      
    </div>
    <input class="loginLoginValue" type="hidden" name="service" value="login" />
  </div>
  <p class="p-container">
    <input type="submit" name="giris" id="go" value="Login">
  </p>
</form>
    
 
     <% 
  String mail = request.getParameter("email_load");
 String sifre = request.getParameter("password_load");
   String giris = request.getParameter("giris"); 
 
   
DBUser db =  new DBUser();

  

HttpSession oturum = request.getSession(true);
    oturum.setAttribute("Kmail", mail);

 %> 
    
    


<%  
if(mail !=null && sifre !=null && giris !=null){
    db.vericek(mail, sifre);
    
    if(DBUser.entry_permit){
        response.sendRedirect("giris.jsp");
        
    }else{
        response.sendRedirect("kullanici_giris.jsp");
    }
    
    
}





 
%>  



</body>
</html>
