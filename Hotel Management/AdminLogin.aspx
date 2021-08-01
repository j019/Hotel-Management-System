<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HM.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>

<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="Css/w3%20.css"/>
<link rel="stylesheet" href="Css/family-Raleway%20.css"/>    
<link rel="stylesheet" href="Css/font-awesome.min%20.css"/>

<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Raleway", Arial, Helvetica, sans-serif
    }
    .auto-style5 {
        width: 277px;
        height: 78px;
    }
    .auto-style6 {
        width: 347px;
        height: 78px;
    }
    .auto-style7 {
        width: 277px;
        height: 82px;
    }
    .auto-style8 {
        width: 347px;
        height: 82px;
    }
    .auto-style9 {
        height: 58px;
    }
</style>

</head>
<body>
     <!-- Navigation Bar -->
    <div class="w3-bar w3-black w3-large">
       <a href="HOME.aspx" class="w3-bar-item w3-button w3-red w3-mobile">Home</a>
        <a href="Rooms.aspx" class="w3-bar-item w3-button w3-red w3-mobile">Rooms</a>
        <a href="Abt.aspx" class="w3-bar-item w3-button w3-red w3-mobile">About</a>
        <a href="cntct.aspx" class="w3-bar-item w3-button w3-red w3-mobile">Contact</a>
    </div>
   <class="w3-display-container w3-content" style="max-width:1500px;">
        <img src="Images/hotel.jpg"  alt="The Hotel"  style="min-width:1000px" width="1700" height="900"/>
        <div class="w3-display-left w3-padding w3-col l6 m8" style="left: 12%; top: 33%; width: 59%; height: 367px">
    <form id="form1" runat="server">
        <br/>
        <h2 class="auto-style9"><b>ADMIN LOGIN</b></h2>
        <br/>
        <table border="1" bgcolor="LightGray" >
            <tr>
                <td class="auto-style5"><b>Enter ID:</b><br />
                </td>
                 <td class="auto-style6">
                     <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="251px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>Enter PASSWORD:</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox2" runat="server" Height="34px" TextMode="Password" Width="255px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            </table>
        <asp:Button ID="Button1" runat="server" Height="68px" OnClick="Button1_Click" Text="LOG IN" Width="177px" BackColor="#66FF33" Font-Bold="True" />
    </form>
   </div>
</body>
</html>
