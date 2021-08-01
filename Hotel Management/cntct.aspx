<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cntct.aspx.cs" Inherits="HM.WebForm3" %>

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
       </div>

<div class="w3-container" id="contact">
    <h2>Contact</h2>
    <p>If you have any questions, do not hesitate to ask them.</p>
    <i class="w3-text-red" style="width:30px"></i>  Mumbai, INDIA<br>
    <i class=" w3-text-red" style="width:30px"></i>📞 Phone: +91 1487883944<br>
    <i class="w3-text-red" style="width:30px"></i>✉ Email: picaso@gmail.com<br>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Message" required name="Message"></p>

       <a href="mailto:picaso@gmail.com">  
        Click Here To Send Email
  </div>
       </form>
</body>
</html>