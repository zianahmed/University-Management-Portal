<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_CourseOffer.aspx.cs" Inherits="packages_Admin_CourseOffer" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Admin_CourseOffer.css" type="text/css"/>
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
                        <asp:TextBox class="bt" ID="Courses" runat="server" TYPE="submit" VALUE="Courses" OnTextChanged="Courses_TextChanged"></asp:TextBox>
                </div>
                <div class="List">
                        <asp:TextBox class="bt" ID="Report" runat="server" TYPE="submit" VALUE="Report" OnTextChanged="Report_TextChanged"></asp:TextBox>
                </div>
                
            </div>

             <div class="Left">

                 <div class="Dash">
                     <h2>Courses Offered</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                      <div class="Mid">
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                        <h2>Session: </h2>
                     <asp:DropDownList class="bt1" ID="Session" runat="server" OnSelectedIndexChanged="SessionSelect_SelectedIndexChanged" >  
                            <asp:ListItem Value="">Select</asp:ListItem>  
                            <asp:ListItem Value="Fall ">Fall</asp:ListItem>
                            <asp:ListItem Value="Summer ">Summer</asp:ListItem>
                            <asp:ListItem Value="Spring ">Spring</asp:ListItem>
                        </asp:DropDownList> 
                          
                      </div>
                     <div class="Mid">
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                        <asp:TextBox class="bt1" ID="Registered" runat="server" TYPE="submit" VALUE="Registered" OnTextChanged="Registered_TextChanged"></asp:TextBox>
                        <asp:TextBox class="bt1" ID="Add" runat="server" TYPE="submit" VALUE="Add" OnTextChanged="Add_TextChanged"></asp:TextBox>
                         <asp:TextBox class="bt1" ID="Offered" runat="server" TYPE="submit" VALUE="Offered" OnTextChanged="Offered_TextChanged"></asp:TextBox>
                     </div>
                 </div>
                  
             </div>
          
        </section>
    </form>
</body>
</html>
