<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmPage.aspx.cs" Inherits="HM.ConfirmPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation Page</title>
</head>
<body bgcolor="LightGray">
   <h1><b><center>Thanks For Booking In Our Hotel.<br/> For Another Booking Click Below.</center></b></h1>
     <form id="form1" runat="server">
    <center>
        <asp:Button ID="Button1" runat="server" Height="48px" Text="Click Me" Width="174px" BackColor="Red" Font-Bold="True" OnClick="Button1_Click"/>
    </center>
       </form>
</body>
</html>
