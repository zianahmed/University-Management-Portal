<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_Attendence.aspx.cs" Inherits="packages_Teacher_Attendence" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Teacher_Attendence.css" type="text/css"/>
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
                     <h2>Attendence</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                     <div class="Mid">
                        <asp:DropDownList class="bt1" ID="Subject" runat="server" OnSelectedIndexChanged="SubjectSelect_SelectedIndexChanged" Autopostback="true">  
                            <asp:ListItem Value="">Select</asp:ListItem>  
                            <asp:ListItem Value="Subject1">Subject1</asp:ListItem>  
                            <asp:ListItem Value="Subject2">Subject2</asp:ListItem>  
                            <asp:ListItem Value="Subject3">Subject3</asp:ListItem>  
                            <asp:ListItem Value="Subject4">Subject4</asp:ListItem>
                            <asp:ListItem Value="Subject5">Subject5</asp:ListItem>  
                            <asp:ListItem Value="Subject6">Subject6</asp:ListItem>  
                            <asp:ListItem Value="Subject7">Subject7</asp:ListItem>
                        </asp:DropDownList>  
                     </div>
                     <div class="T1">
                         <h4>Course Name :</h4>
                         <asp:Label class="T2" ID="CourseName" runat="server" TYPE="text" VALUE=""></asp:Label>
                         <h4>Section :</h4>
                         <asp:Label class="T2" ID="CourseID" runat="server" TYPE="text" VALUE=""></asp:Label>
                     </div>
                    <div class="Mid">
                          <asp:TextBox class="bt1" ID="TextBox4" runat="server" TYPE="submit" VALUE="View" OnTextChanged="View_TextChanged"></asp:TextBox>
                          <asp:TextBox class="bt1" ID="TextBox5" runat="server" TYPE="submit" VALUE="Edit" OnTextChanged="Edit_TextChanged"></asp:TextBox>
                     </div>
                         
                   </div>
               

                 </div>
                  
        </section>
    </form>
</body>
</html>