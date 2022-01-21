 <%-- 
    Document   : index
    Author     : GÜLCİN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
     
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/style.css" type="text/css"/>
</head>
<body>
    <div class ="baslik">

        <img class="resim" src="photo/logo.png" alt="logo" width="350" height="70" />

        <div class="alt_baslik">
            <p  class="tel">0 555 555 55 55</p>
            <p  class="mail">glcnn@gmail.com</p>
            <p  class="adres">Kümbet, Başbağlar Cd.</p>
        </div>

        <div id="ust_dıv"></div>

        <form action="yonetici_giris.jsp" method="get">
            <input id="admin_btn" type="submit" value="YÖNETİCİ GİRİŞİ" />
        </form>

        
        <form action="kullanici_giris.jsp" method="get">
            <input  id="user_btn" type="submit" value="KULLANICI GİRİŞİ" />
        </form>

        <form action="kayit_formu.jsp" method="get">
            <input  id="kayit_btn" type="submit" value="KAYIT OLUNUZ" />
        </form>

    </div>

    <div class="main">

        <form action="kullanici_giris.jsp" method="get">
            <input id="kira_btn" type="submit" value="ARAÇ KİRALA" />
        </form>

        <h1 class="y1">Araç Kiralamak Artık Çok Kolay</h1>

        <img class="kasko" src="photo/kasko.png" alt="kasko" width="22%" height="22%">

        <img class="yol" src="photo/yol.png" alt="yol yardım">

        <img class="resim_m" src="photo/main.jpg" alt="ortaimg" width="100%" height="100%" />

    </div>
</body>
</html>

