<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="HM.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>Admin Dashboard</title>
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
        <a href="AdminLogin.aspx" class="w3-bar-item w3-button w3-grey w3-right w3-mobile">Log Out</a>
    </div>
   <class="w3-display-container w3-content" style="max-width:1500px;">
        <img src="Images/hotel.jpg" alt="The Hotel"  style="min-width:1000px" width="1700" height="900"/>
        <div class="w3-display-left w3-padding w3-col l6 m8" style="left: 14%; top: 36%; width: 60%; height: 486px">
            <br/>
                <br/>
            <div class="w3-container w3-light-grey" style="width: 755px; height: 851px; margin-left: 80px;">
                <br/>
                <br/>
                    <h1><b><u>ADMIN DASHBOARD</u></b></h1>
                    <br/>
                      <asp:Button ID="Button1" runat="server" Height="58px" Text="Add Room " Width="198px" OnClick="Button1_Click" BackColor="#CC9900" Font-Bold="True" />
                    <br />
                <br />
                      <asp:Button ID="Button2" runat="server" Height="58px" Text="Modify Data" Width="202px" BackColor="#CC9900" Font-Bold="True" OnClick="Button2_Click" />
                    <br />
                <br />
                    <asp:Button ID="Button3" runat="server" Height="58px" Text="VIEW BOOKING" Width="197px" BackColor="#CC9900" Font-Bold="True" OnClick="Button3_Click" />
                    <br />
                    <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="BookingID" DataSourceID="SqlDataSource1" Height="218px" Visible="False" Width="727px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:BoundField DataField="BookingID" HeaderText="BookingID" InsertVisible="False" ReadOnly="True" SortExpression="BookingID" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="CheckIn" HeaderText="CheckIn" SortExpression="CheckIn" />
                        <asp:BoundField DataField="CheckOut" HeaderText="CheckOut" SortExpression="CheckOut" />
                        <asp:BoundField DataField="RType" HeaderText="RType" SortExpression="RType" />
                        <asp:BoundField DataField="RNo" HeaderText="RNo" SortExpression="RNo" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMConnectionString %>" SelectCommand="SELECT * FROM [Booking]"></asp:SqlDataSource>
                    <br />
            </div>      
        </div>    
     </form>
     </body>
</html>

