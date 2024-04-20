<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_StudentReport.aspx.cs" Inherits="packages_Admin_StudentReport" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Admin_StudentReport.css" type="text/css"/>
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
                        <asp:TextBox class="bt" ID="Reports" runat="server" TYPE="submit" VALUE="Report" OnTextChanged="Students_TextChanged"></asp:TextBox>
                </div>
                
            </div>

             <div class="Left">

                 <div class="Dash">
                     <h2>Student Report</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                     <div class="Mid">
                          <span>Session :   </span>
                         <asp:DropDownList class="bt1" ID="Semester" runat="server" OnSelectedIndexChanged="SessionSelect_SelectedIndexChanged" AutoPostBack="true">  
                            <asp:ListItem Value="">Select</asp:ListItem>  
                        </asp:DropDownList> 
                    </div>
                     <div class="Mid">
                         <asp:DropDownList class="bt1" ID="Section" runat="server" OnSelectedIndexChanged="DropDownSelect_SelectedIndexChanged" >  
                            <asp:ListItem Value="">Select</asp:ListItem>  
                        </asp:DropDownList> 
                     </div>
                      
                     <div class="Mid">
                         <asp:TextBox class="bt1" ID="Generate" runat="server" TYPE="submit" VALUE="Generate Report" OnTextChanged="Generate_TextChanged"></asp:TextBox>
                     </div>
                 </div>
                  
             </div>
          
        </section>
    </form>
</body>
</html>
