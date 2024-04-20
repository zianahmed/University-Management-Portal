<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup_Faculty.aspx.cs" Inherits="packages_Signup_Faculty" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Signup_Faculty.css" type="text/css"/>
</head>
<body>
    <form id="form" runat="server">
        <section>
            <div class="Img">
                <img src="Images/img1.jpg"/>
            </div>
            <div class="contentBx">
                <div class="formBx">
                    <div class="inputBx">
                        <span>Name</span>
                        <asp:TextBox ID="name" runat="server" TYPE="text" OnTextChanged="name_func"></asp:TextBox>
                    </div>
                    <div class="inputBx">
                        <span>Email</span>
                        <asp:TextBox ID="Email" runat="server" TYPE="email" OnTextChanged="email_func"></asp:TextBox>
                    </div>
                    <div class="inputBx">
                        <span>Phone No</span>
                        <asp:TextBox ID="PhoneNo" runat="server" TYPE="text" OnTextChanged="PhoneNo_func"></asp:TextBox>
                    </div>
                    <div class="inputBx">
                        <span>Address</span>
                        <asp:TextBox ID="Address" runat="server" TYPE="text" OnTextChanged="Address_func"></asp:TextBox>
                    </div>
                    <div class="inputBx">
                        <span>Select a Position</span>
                        <asp:DropDownList ID="Position" runat="server" OnSelectedIndexChanged="Position_SelectedIndexChanged" >  
                            <asp:ListItem Value="">Please Select</asp:ListItem>  
                            <asp:ListItem Value="Lab Instructor">Lab </asp:ListItem>  
                            <asp:ListItem Value="Lecturer">Lecturer</asp:ListItem>  
                        </asp:DropDownList>
                    </div>
                    <div class="inputBx">
                        <span>Select a Department</span>
                        <asp:DropDownList ID="Department" runat="server" OnSelectedIndexChanged="Depatment_SelectedIndexChanged" >  
                            <asp:ListItem Value="">Please Select</asp:ListItem>  
                            <asp:ListItem Value="CS">CS </asp:ListItem>  
                            <asp:ListItem Value="EE">EE</asp:ListItem>  
                            <asp:ListItem Value="FSM">FSM</asp:ListItem>  
                            <asp:ListItem Value="SH">SH</asp:ListItem>  
                        </asp:DropDownList>
                    </div>
                    <div class="inputBx">
                        <span>Password</span>
                        <asp:TextBox ID="password" runat="server" TYPE="password" OnTextChanged="password_func"></asp:TextBox> 
                    </div>
                     <div class="inputBx">
                        <asp:TextBox ID="SignUp" runat="server" TYPE="submit" VALUE="Sign Up" OnTextChanged="SignUp_func"></asp:TextBox>
                    </div>
                 
                </div>

            </div>
        </section>
    </form>
</body>
</html>