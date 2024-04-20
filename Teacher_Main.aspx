<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_Main.aspx.cs" Inherits="packages_Teacher_Main" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Teacher_Main.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
         <section>
            <div class="SideBar">
                <div class="Logo">
                    <h1>FLEX</h1>
                </div>
                <br />
                <br />
                <br />
                <div class="List">
                        <asp:TextBox class="bt" ID="Home" runat="server" TYPE="submit" VALUE="Home" OnTextChanged="Home_TextChanged"></asp:TextBox>
                </div>
                 <div class="List">
                        <asp:TextBox class="bt" ID="Attendence" runat="server" TYPE="submit" VALUE="Attendence" OnTextChanged="Attendence_TextChanged"></asp:TextBox>
                </div>
                <div class="List">
                        <asp:TextBox class="bt" ID="FeedBack" runat="server" TYPE="submit" VALUE="FeedBack" OnTextChanged="FeedBack_TextChanged"></asp:TextBox>
                </div>
                <div class="List">
                        <asp:TextBox class="bt" ID="Marks" runat="server" TYPE="submit" VALUE="Marks" OnTextChanged="Marks_TextChanged"></asp:TextBox>
                </div>
                
            </div>

             <div class="Left">

                 <div class="Dash">
                     <h2>DashBoard</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                     <div class="T1">
                         <h4>Name :</h4>
                         <asp:Label class="T2" ID="Name" runat="server" TYPE="text" VALUE="" OnTextChanged="Name_TextChanged"></asp:Label>
                         <h4>ID :</h4>
                         <asp:Label class="T2" ID="ID" runat="server" TYPE="text" VALUE="" OnTextChanged="ID_TextChanged"></asp:Label>
                         <h4>Phone No :</h4>
                         <asp:Label class="T2" ID="PhoneNo" runat="server" TYPE="text" VALUE="" OnTextChanged="PhoneNo_TextChanged"></asp:Label>
                     </div>
                     <div class="T1">
                         <h4>Email :</h4>
                         <asp:Label class="T2" ID="Email" runat="server" TYPE="text" VALUE="" OnTextChanged="Email_TextChanged"></asp:Label>
                         <h4>Address :</h4>
                         <asp:Label class="T2" ID="Address" runat="server" TYPE="text" VALUE="" OnTextChanged="Address_TextChanged"></asp:Label>
                         <h4>Designation :</h4>
                         <asp:Label class="T2" ID="Designation" runat="server" TYPE="text" VALUE="" OnTextChanged="Designation_TextChanged"></asp:Label>
                     </div>
                     <div class="T1">
                         <h4>Department :</h4>
                         <asp:Label class="T2" ID="Department" runat="server" TYPE="text" VALUE="" OnTextChanged="Department_TextChanged"></asp:Label>
                         
                     </div>
               

                 </div>
                  
             </div>
        </section>
    </form>
</body>
</html>
