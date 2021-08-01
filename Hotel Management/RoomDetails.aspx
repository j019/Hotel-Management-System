<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomDetails.aspx.cs" Inherits="HM.RoomDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Room Details</title>
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

    <style type="text/css">
        .auto-style1 {
            height: 28px;
            width: 277px;
        }
        .auto-style2 {
            height: 28px;
            width: 347px;
        }
        .auto-style3 {
            width: 347px;
            height: 50px;
        }
        .auto-style4 {
            width: 277px;
            height: 50px;
        }
        .auto-style5 {
            width: 739px;
            height: 529px;
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
        <a href="UserLogin.aspx" class="w3-bar-item w3-button w3-grey w3-right  w3-mobile">User Login</a>
    </div>

    <class="w3-display-container w3-content" style="max-width:1500px;">
        <img src="Images/hotel.jpg" alt="The Hotel"  style="min-width:1000px" width="1700" height="900"/>
        <div class="w3-display-left w3-padding w3-col l6 m8" style="left: 14%; top: 36%; width: 55%; height: 486px">
            <br/>
                <br/>
            <div class="w3-container w3-light-grey" style="width: 800px; height: 750px ;">
                <br/>
                <br/>
               
    <form id="form1" runat="server">
        <table border="1" class="auto-style5">
             <h2><b><center>ADMIN PANEL</center></h2>
            <tr>
                <td class="auto-style1">
                    <h5>Room Number:<br />
                    </h5>
                </td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="251px" TextMode="Number"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h5>Room Price:<br />
                    </h5>
                </td>
                 <td class="auto-style3">
                     <asp:TextBox ID="TextBox2" runat="server" Height="34px" TextMode="Number" Width="255px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h5>Room Type:<br />
                    </h5>
                </td>
                 <td class="auto-style3">
                     <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="255px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h5>Room Capacity:<br />
                    </h5>
                </td>
                 <td class="auto-style3">
                     <asp:TextBox ID="TextBox4" runat="server" Height="34px" TextMode="Number" Width="255px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h5>Room Status:<br />
                    </h5>
                </td>
                 <td class="auto-style3">
                     <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="255px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h5>Room Description:<br />
                    </h5>
                </td>
                 <td class="auto-style3">
                     <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="255px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            
            </table>
            
                     <br />
            
                     <asp:Button ID="Button1" runat="server" Text="SAVE" Height="40px" OnClick="Button1_Click" Width="149px" BackColor="#99FF33"/>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
                     <asp:Button ID="Button2" runat="server" Text="RESET" Height="38px" Width="138px" BackColor="Red" OnClick="Button2_Click"/>  
        </b>
    </form>
      </div>
   </div>
</body>
</html>
