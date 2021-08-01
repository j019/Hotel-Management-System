<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="HM.WebForm4" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Contact Us</title>
    
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
        <a href="UserLogin.aspx" class="w3-bar-item w3-button w3-grey w3-right w3-mobile">Log In</a>
        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To Picaso Hotel <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
    </div>

<!-- Page content -->
<div class="w3-content" style="max-width:1532px;">

  <div class="w3-container w3-margin-top" id="rooms">
    <h3>Rooms</h3>
    <p>Make yourself at home is our slogan. We offer the best beds in the industry. Sleep well and rest well.<br/>
        WE PROVIDE UNLIMITED HIGH SPEED WIFI,SMALL REFRIGERATOR,AC AND ATTACHED BATHROOM ACCORDING TO ROOM TYPES.
    </p>
  </div>
  <div class="w3-row-padding">
	<div class="w3-col m3">
        <asp:Button ID="Button1" runat="server" Height="49px" OnClick="Button1_Click" Text="CHOOSE ROOM" Width="177px" BorderStyle="Solid" BackColor="#33CC33" Font-Bold="True" />
	</div>
  </div>
  </div>

  <div class="w3-row-padding w3-padding-16">
    <div class="w3-third w3-margin-bottom">
      <img src="Images/room_single.jpg"  alt="Norway" style="width:100%" />
      <div class="w3-container w3-white">   
        <h3>Single Room</h3>
        <h6 class="w3-opacity">From Rs899</h6>
        <p>Single bed</p>
        <p>15m<sup>2</sup></p>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="Images/room_double.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Double Room</h3>
        <h6 class="w3-opacity">From Rs1499</h6>
        <p>Queen-size bed</p>
        <p>25m<sup>2</sup></p>
        </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="Images/room_deluxe.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Deluxe Room</h3>
        <h6 class="w3-opacity">From Rs2999</h6>
        <p>King-size bed</p>
        <p>40m<sup>2</sup></p>
        </div>
    </div>
  </div>
       </form>
 </body>
</html>