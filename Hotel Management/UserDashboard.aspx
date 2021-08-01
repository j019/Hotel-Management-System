<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="HM.UserDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Dashboard</title>

<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="Css/w3%20.css"/>
<link rel="stylesheet" href="Css/family-Raleway%20.css"/>    
<link rel="stylesheet" href="Css/font-awesome.min%20.css"/>

<style>
    body, h1, h2, h3, h4, h5, h6 
    {
        font-family: "Raleway", Arial, Helvetica, sans-serif
    }
    .auto-style1 
    {
        margin-top: 9px;
        color: #FF0000;
    }
    .auto-style2 
    {
        background-color: #FFFFFF;
    }
    .auto-style3
    {
        font-weight: bold;
        background-color: #FF0000;
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
        <a href="UserLogin.aspx" class="w3-bar-item w3-button w3-grey w3-right  w3-mobile">Log Out</a>
        
    </div>
    <class="w3-display-container w3-content" style="max-width:1500px;">
        <img src="Images/hotel.jpg"  alt="The Hotel"  style="min-width:1000px"  margin-bottom="1500" width="1700" height="1100"/>
        <br/>
        <div class="w3-display-left w3-light-grey w3-padding" style="left:20%; margin-top:200px; width: 800px; height:900px;">
        <form id="form1" runat="server" class="auto-style1">

            <h1><strong><span class="w3-black">&nbsp; USER DASHBOARD&nbsp; </span></strong></h1>
            <p>
                &nbsp;</p>
            <p>
                <strong><span class="auto-style2">
                <asp:Button ID="Button1" runat="server" BackColor="#CC9900" Font-Bold="True" Height="84px" Text="BOOK YOUR ROOM" Width="269px" OnClick="Button1_Click" />
                </span></strong>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <strong><span class="auto-style2">
                <asp:Button ID="Button2" runat="server" BackColor="#CC9900" Font-Bold="True" Height="81px" Text="VIEW BOOKING" Width="266px" OnClick="Button2_Click" />
                </span></strong>
            </p>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingID" DataSourceID="SqlDataSource1" Height="121px" Width="743px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="w3-text-black" OnRowDeleting="GridView1_RowDeleting" AutoGenerateSelectButton="True" Visible="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="BookingID" HeaderText="BookingID" InsertVisible="False" ReadOnly="True" SortExpression="BookingID" />
                    <asp:BoundField DataField="CheckIn" HeaderText="CheckIn" SortExpression="CheckIn" />
                    <asp:BoundField DataField="CheckOut" HeaderText="CheckOut" SortExpression="CheckOut" />
                    <asp:BoundField DataField="RType" HeaderText="RType" SortExpression="RType" />
                    <asp:BoundField DataField="RNo" HeaderText="RNo" SortExpression="RNo" />
                </Columns>
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMConnectionString %>"
                SelectCommand="SELECT [BookingID], [CheckIn], [CheckOut], [RType], [RNo] FROM [Booking] WHERE ([UserID] = @UserID)"
                DeleteCommand="DELETE from [Booking] where ([UserID] = @UserID)">
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="UserName" Type="String" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:SessionParameter Name="UserID" SessionField="UserName" Type="String" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <br />
            <strong>&nbsp;
            <asp:Label ID="Label1" runat="server" Text="BOOKING ID" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Check In" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Check Out&nbsp;&nbsp;&nbsp;" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text=" RoomType&nbsp;" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="RoomNumber" Visible="False"></asp:Label>
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            </strong>&nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="Black" CssClass="w3-text-white" Height="29px" Width="92px" Visible="False"></asp:TextBox>
               
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" BackColor="Black" CssClass="w3-text-white" Height="28px" Width="145px" Visible="False"></asp:TextBox>
               
           
            &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" BackColor="Black" CssClass="w3-text-white" Height="31px" Width="146px" Visible="False"></asp:TextBox>
               
           
            &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" BackColor="Black" CssClass="w3-text-white" Height="31px" Width="130px" Visible="False"></asp:TextBox>
               
           
            &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" BackColor="Black" CssClass="w3-text-white" Height="31px" Width="124px" Visible="False"></asp:TextBox>
               
           
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" CssClass="auto-style3" ForeColor="White" Height="56px"  Text="CANCEL BOOKING"  Width="225px" OnClick="Button3_Click1" />
            <br />
            <br />
            <br />

         </form>
        </div>
        </body>
    </html>