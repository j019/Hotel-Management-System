<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="HM.UserSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Sign Up</title>

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
        <img src="Images/hotel.jpg"  alt="The Hotel" style="min-width:1000px" width="1700" height="900"/>
        <div class="w3-display-left w3-padding w3-col l6 m8" style="left: 12%; top: 12%; width: 800px; height: 600px; margin-bottom: 33px;">
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
        <br />
        <br />
        <br/>
        <h2 class="auto-style9"><b>USER LOGIN</b></h2>
        <table border="1" bgcolor="LightGray" >
            <tr>
                <td class="auto-style5"><b>FIRST NAME:*</b><br />
                </td>
                 <td class="auto-style6">
                     <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="251px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Can't Be Blank"></asp:RequiredFieldValidator>
                     <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>LAST NAME:*</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="255px"></asp:TextBox>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name Can't Be Blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>ADDRESS:*</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="255px" TextMode="MultiLine"></asp:TextBox>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Address Can't Be Blank "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>CONTACT NO.:*</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="255px" TextMode="Phone"></asp:TextBox>
                     <br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Number Is Not In Correct Expression" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>EMAIL ID:*</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="255px" TextMode="Email"></asp:TextBox>
                     <br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Email Is Not In Correct Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><b>PASSWORD:*</b><br />
                </td>
                 <td class="auto-style8">
                     <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="255px" TextMode="Password"></asp:TextBox>
                     <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password Can't Be Empty"></asp:RequiredFieldValidator>
                     <br />
                     <br />
                </td>
            </tr>    
        </table>
        <asp:Button ID="Button1" runat="server" Height="49px"  Text="SUBMIT" Width="177px" BackColor="#66FF33" Font-Bold="True" OnClick="Button1_Click1" />
        
        <asp:Button ID="Button2" runat="server" Height="48px" Text="RESET" Width="174px" BackColor="Red" Font-Bold="True" OnClick="Button2_Click" />
        
    </form>
   </div>
</body>
</html>
