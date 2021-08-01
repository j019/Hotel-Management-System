<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="HM.AddRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Room</title>

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
    .auto-style10 {
        margin-top: 0px;
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
        <img src="Images/hotel.jpg"  alt="The Hotel"  style="min-width:1000px" width="1700" height="900"/>
        <div class="w3-display-left w3-padding w3-col l6 m8" style="left: 12%; top: 12%; width: 59%; height: 527px; margin-bottom: 33px;">
    <form id="form1" runat="server">
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <h2 class="auto-style9"><b>ADD ROOMS</b></h2>
        <table border="1" bgcolor="LightGray" class="auto-style10" >
            <tr>
                <td class="auto-style5"><b>Room Number:</b><br />
                </td>
                 <td class="auto-style6">
                     <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="251px" TextMode="Number"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>Room Price:</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="255px" TextMode="SingleLine"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>Room Capacity:</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="255px" TextMode="Number"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>Room Type:</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="255px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>Room Status:</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="255px"></asp:TextBox>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>Room Description:</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="255px" TextMode="MultiLine"></asp:TextBox>
                     <br />
                </td>
            </tr>    
        </table>
        <br/>
        
        <asp:Button ID="Button1" runat="server" Height="49px" OnClick="Button1_Click" Text="SUBMIT" Width="177px" BackColor="#66FF33" Font-Bold="True" />
        
        <asp:Button ID="Button2" runat="server" Height="48px" Text="RESET" Width="174px" BackColor="Red" Font-Bold="True" OnClick="Button2_Click" />
        
    </form>
   </div>
</body>
</html>

