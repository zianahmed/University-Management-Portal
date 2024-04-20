<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="packages_Signup" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Signup.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="Img">
                <img src="Images/img2.jpg"/>
            </div>
            <div class="contentBx">
                <div class="formBx">
                    <h2>Sign Up</h2>
                     <div class="inputBx">
                        <asp:TextBox ID="Admin" runat="server" TYPE="submit" VALUE="Admin" OnTextChanged="Admin_func"></asp:TextBox>
                    </div>
                     <div class="inputBx">
                        <asp:TextBox ID="Faculty" runat="server" TYPE="submit" VALUE="Faculty" OnTextChanged="Faculty_func"></asp:TextBox>
                    </div>
                     <div class="inputBx">
                        <asp:TextBox ID="Student" runat="server" TYPE="submit" VALUE="Student" OnTextChanged="Student_func"></asp:TextBox>
                    </div>
                 
                </div>

            </div>
        </section>
    </form>
</body>
</html>
