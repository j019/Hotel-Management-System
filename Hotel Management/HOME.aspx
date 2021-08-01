<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="HM.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>Home Page</title>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="Css/w3%20.css"/>
<link rel="stylesheet" href="Css/family-Raleway%20.css"/>    
<link rel="stylesheet" href="Css/font-awesome.min%20.css"/>

<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Raleway", Arial, Helvetica, sans-serif
    }
    .auto-style1 {
        width: 270px;
    }
    .auto-style2 {
        width: 302px;
    }
    .auto-style3 {
        width: 638px;
        height: 449px;
    }
    .auto-style4 {
        background-color: #FF0000;
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
        <a href="AdminLogin.aspx" class="w3-bar-item w3-button w3-grey w3-right w3-mobile">Admin Login</a>
        <a href="UserLogin.aspx" class="w3-bar-item w3-button w3-grey w3-right w3-mobile">User Login</a>
    </div>
   <class="w3-display-container w3-content" style="max-width:1500px;">
        <img src="Images/hotel.jpg" alt="The Hotel"  style="min-width:1000px" width="1700" height="900"/>
        <div class="w3-display-left w3-padding w3-col l6 m8" style="left: 14%; top: 36%; width: 55%; height: 486px">
         <br/>   
         <br/>       
        <br/>
        <br/>
        <br/>
        <br/>
        <h2><strong><span class="auto-style4">&nbsp;PICASO HOTEL&nbsp; </span></strong></h2>
        <table border="1" bgcolor="LightGray" class="auto-style3" >
             <tr>
                <td class="auto-style2"><b>SELECT ROOM TYPE:</b><br />
                </td>
                 <td class="auto-style1">
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="260px" DataSourceID="SqlDataSource1" DataTextField="RoomType" DataValueField="RoomType" AutoPostBack="True">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMConnectionString %>" SelectCommand="SELECT DISTINCT [RoomType] FROM [Room]"></asp:SqlDataSource>
                     <br />
                 </td>
            </tr>
           
            <tr>
                <td class="auto-style2"><b>ROOM PRICE:</b><br />
                </td>
                 <td class="auto-style1">
                     <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="260px" TextMode="SingleLine" Enabled="False"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><b>AVAILIBILITY:</b><br />
                </td>
                 <td class="auto-style1">
                     <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="260px" Enabled="False"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>CLICK HERE ---&gt;</strong><br />
                </td>
                 <td class="auto-style1">
                     <asp:Button ID="Button1" runat="server" Height="67px" Text="Seach Availibility" Width="270px" BackColor="#66FF33" Font-Bold="True" OnClick="Button1_Click1" />
                     <br />
                </td>
            </tr>
        </table>
        <br/>
        </div>
       
        </form>  
        
    </body>
</html>
