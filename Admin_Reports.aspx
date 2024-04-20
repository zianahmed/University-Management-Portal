<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Reports.aspx.cs" Inherits="packages_Admin_Reports" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Admin_Reports.css" type="text/css"/>
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
                     <h2>Reports</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                     <div class="Mid">
                     </div>
                      
                     <div class="Mid">
                         <asp:TextBox class="bt1" ID="Student_Section" runat="server" TYPE="submit" VALUE="Student Section" OnTextChanged="Student_Section_TextChanged"></asp:TextBox>
                         <asp:TextBox class="bt1" ID="Course_Allocation" runat="server" TYPE="submit" VALUE="Course Allocation" OnTextChanged="Course_Allocation_TextChanged"></asp:TextBox>
                     </div>
                 </div>
                  
             </div>
          
        </section>
    </form>
</body>
</html>
