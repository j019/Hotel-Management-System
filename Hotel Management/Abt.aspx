<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Abt.aspx.cs" Inherits="HM.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> About hotel</title>
    
    <meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="Css/w3%20.css"/>
<link rel="stylesheet" href="Css/family-Raleway%20.css"/>    
<link rel="stylesheet" href="Css/font-awesome.min%20.css"/>
<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Raleway", Arial, Helvetica, sans-serif
    }
</style>
</head>
<body class="w3-light-grey">
    <form id="form1" runat="server">
         <!-- Navigation Bar -->
    <div class="w3-bar w3-black w3-large">
       <a href="HOME.aspx" class="w3-bar-item w3-button w3-red w3-mobile">Home</a>
        <a href="Rooms.aspx" class="w3-bar-item w3-button w3-red w3-mobile">Rooms</a>
        <a href="Abt.aspx" class="w3-bar-item w3-button w3-red w3-mobile">About</a>
        <a href="cntct.aspx" class="w3-bar-item w3-button w3-red w3-mobile">Contact</a>
    </div>
        <div>
            <h2><center><b>About US</b></center></h2>
        <h4>
            At the HOTEL PICASO PRIVE , guests will experience a seamless blend of refinement and convenience in superb accommodations located in the heart of the MUMBAI.
            Guest will enjoy leisure, business and much more.

            Whether traveling for business or leisure, Hotel's guest rooms offer the perfect place to rest and relax after a busy day.
            Each recently upgraded rooms comes complete with a 32-inch flat screen TV, free high-speed wireless Internet access, a desk and many more...
        </h4>
        </div>
    <div class="w3-col l8 12">
        <!-- Image of location/map -->
        <img src="Images/map.jpg" class="w3-image w3-greyscale" style="width:100%;"/>
    </div>
    </form>

</body>
</html>
