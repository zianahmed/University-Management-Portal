<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_FeedBack.aspx.cs" Inherits="packages_Teacher_FeedBack" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Teacher_FeedBack.css" type="text/css"/>
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
                     <h2>FeedBack</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                    
                         <div class="Mid">
                        <asp:DropDownList class="bt1" ID="Subject" runat="server" OnSelectedIndexChanged="SubjectSelect_SelectedIndexChanged" AutoPOstBack="true">  
                            <asp:ListItem Value="">Select</asp:ListItem>  
                        </asp:DropDownList>  
                     </div>
                     <div class="T1">
                         <h4>Course Name :</h4>
                         <asp:Label class="T2" ID="CName" runat="server" TYPE="text" VALUE="" OnTextChanged="CourseName_TextChanged"></asp:Label>
                         <h4>Section :</h4>
                         <asp:Label class="T2" ID="Section" runat="server" TYPE="text" VALUE="" OnTextChanged="CourseID_TextChanged"></asp:Label>
                     </div>
                     <br />
                     <br />
              
                    <div class="Mid">
                          <asp:TextBox class="bt1" ID="View" runat="server" TYPE="submit" VALUE="View Report" OnTextChanged="View_TextChanged"></asp:TextBox>
                     </div>
                         
                   </div>
               </div>
                  
        </section>
    </form>
</body>
</html>
