<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookNow.aspx.cs" Inherits="HM.BookNow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking</title>

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
        margin-top: 9px;
    }
    .auto-style2 {
        width: 538px;
        margin-top: 15px;
    }
    .auto-style3 {
        color: #000000;
        background-color: #C0C0C0;
    }
    .auto-style4 {
        color: #FFFFFF;
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
        <a href="UserLogin.aspx" class="w3-bar-item w3-button w3-grey w3-right  w3-mobile">Log In</a>
        
    </div>
    <class="w3-display-container w3-content" style="max-width:1500px;">
        <img src="Images/hotel.jpg"  alt="The Hotel"  style="min-width:1000px"  margin-bottom="1500" width="1700" height="1100"/>
        <br/>
        <div class="w3-display-left w3-light-grey w3-padding" style="left:20%; margin-top:200px; width: 800px; height:900px;">
                           
          <form id="form1" runat="server" class="auto-style1">
               <br />
                <br />
                <h2 class="auto-style2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server" Text="&lt;b&gt;&lt;u&gt;YOUR BOOKING DETAILS&lt;/u&gt;&lt;/b&gt;" CssClass="auto-style4"></asp:Label>
                    </strong></h2>
            <br />
             <h5><strong>
              <asp:Label ID="Label3" runat="server" Text="Your Room Number:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" CssClass="w3-text-black"></asp:Label>
                        </strong></h5>
               &nbsp;&nbsp;&nbsp;&nbsp;
             <br />
                <h5>
                    <strong>
             <asp:Label ID="Label4" runat="server" Text="Your Room Price:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" CssClass="w3-text-black"></asp:Label>
                    </strong></h5>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
              <h5>
                    <strong>
             <asp:Label ID="Label5" runat="server" Text="Room Capacity:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" CssClass="w3-text-black"></asp:Label>
                    </strong>

                    </h5>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                    <strong>
             
                <h5>
             <asp:Label ID="Label6" runat="server" Text="Your Room Type:" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                 <asp:Label ID="Label12" runat="server" CssClass="w3-text-black"></asp:Label>
                    </strong>
                </h5>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> <span class="w3-text-white"><strong>&nbsp;</strong> </span>
             <br />
             <h5>
                    <strong>
                <asp:Label ID="Label17" runat="server" Text="Your Room Description:"></asp:Label>
                        
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" CssClass="auto-style3" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine"></asp:TextBox>
                        
                    </strong></h5>
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                <br />
              
                    <h5>  
                    <strong>  
                <asp:Label ID="Label21" runat="server" Text="Check In Date:"></asp:Label>
                  
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="Label23" runat="server" CssClass="w3-text-black"></asp:Label>
                  
                  </strong></h5> 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <strong> 
             &nbsp;&nbsp;&nbsp;
                </strong>
                  
                  <br />  
                           
                    <h5>        
                    <strong>        
                <asp:Label ID="Label20" runat="server" Text="Check Out Date:"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label24" runat="server" CssClass="w3-text-black"></asp:Label>
                  </strong> </h5>
                <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <br />         
          
                    <strong>
                    <span class="w3-text-black">PAYMENT METHOD:--</span>
                    </strong> 
           <br/>
            <asp:RadioButton ID="RadioButton1" runat="server" CssClass="w3-text-black" GroupName="m" OnCheckedChanged="RadioButton1_CheckedChanged" /><span class="w3-text-black"><strong>Credit Card</strong></span><span class="w3-text-white">
            </span>
           <br/>
            <asp:RadioButton ID="RadioButton2" runat="server" CssClass="w3-text-black" GroupName="m" OnCheckedChanged="RadioButton2_CheckedChanged" /><span class="w3-text-black"><strong>Debit Card</strong></span><span class="w3-text-white">
            </span>
          <br/>
            <asp:RadioButton ID="RadioButton3" runat="server" CssClass="w3-text-black" GroupName="m" OnCheckedChanged="RadioButton3_CheckedChanged" /><strong><span class="w3-text-black">Online Transaction</span><span class="w3-text-white"> </span>
               </strong><strong>
               <br class="w3-text-white" />
                </strong>
            <br />
            <br />   
         <asp:Button ID="Button1" runat="server" Height="49px" Text="SUBMIT" Width="177px" BackColor="#66FF33" Font-Bold="True" OnClick="Button1_Click" />
                        
         </form>
      </div>
</body>
</html>
