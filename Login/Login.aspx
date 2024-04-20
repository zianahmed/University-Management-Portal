<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="packages_Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Login.css" type="text/css"/>
</head>
<body>
    <form id="form" runat="server">
        <section>
            <div class="Img">
                <img src="Images/img1.jpg"/>
            </div>
            <div class="contentBx">
                <div class="formBx">
                    <h2>Login</h2>
                    <div class="inputBx">
                        <span>Username</span>
                        <asp:TextBox ID="username" runat="server" TYPE="text" OnTextChanged="username_TextChanged"></asp:TextBox>
                    </div>
                    <div class="inputBx">
                        <span>Password</span>
                        <asp:TextBox ID="TextBox1" runat="server" TYPE="password"></asp:TextBox> 
                    </div>
                     <div class="inputBx">
                        <asp:TextBox ID="TextBox2" runat="server" TYPE="submit" VALUE="Sign In" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </div>
                    <div class="inputBx">
                        <p>Don't have an Account?</p>
                    </div>
                    <div class="inputBx">
                        <asp:TextBox ID="TextBox3" runat="server" TYPE="submit" VALUE="Sign Up" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    </div>
                 
                </div>

            </div>
        </section>
    </form>
</body>
</html>