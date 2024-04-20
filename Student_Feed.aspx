<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Feed.aspx.cs" Inherits="packages_Student_Feed" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Student_Feed.css" type="text/css"/>
</head>
<body>
    <form id="form2" runat="server">
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
                        <asp:TextBox class="bt" ID="Courses" runat="server" TYPE="submit" VALUE="Course Register" OnTextChanged="Course_Registration_TextChanged"></asp:TextBox>
                </div>
                <div class="List">
                        <asp:TextBox class="bt" ID="Marks" runat="server" TYPE="submit" VALUE="Marks" OnTextChanged="Marks_TextChanged"></asp:TextBox>
                </div>
                <div class="List">
                        <asp:TextBox class="bt" ID="Transcript" runat="server" TYPE="submit" VALUE="Transcript" OnTextChanged="Transcript_TextChanged"></asp:TextBox>
                </div>
                <div class="List">
                        <asp:TextBox class="bt" ID="FeedBack" runat="server" TYPE="submit" VALUE="FeedBack" OnTextChanged="FeedBack_TextChanged"></asp:TextBox>
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
                        <asp:DropDownList class="bt1" ID="Subject" runat="server" OnSelectedIndexChanged="SubjectSelect_SelectedIndexChanged" Autopostback="true">  
                            <asp:ListItem Value="">Select</asp:ListItem>  
                        </asp:DropDownList>  
                     </div>
                     <div class="T1">
                     <h4>Course Name :</h4>
                    <asp:Label class="T2" ID="CourseName" runat="server" Text=""></asp:Label>
                    <h4>Course ID :</h4>
                    <asp:Label class="T2" ID="CourseID" runat="server" Text=""></asp:Label>
                    <h4>Teacher :</h4>
                    <asp:Label class="T2" ID="Teacher" runat="server" Text=""></asp:Label>
                    </div>
                     <br />
                     <br />
                     <br />
                    <div class="Mid">
                        <asp:TextBox class="bt1" ID="Give" runat="server" TYPE="submit" VALUE="Give FeedBack" OnTextChanged="Give_TextChanged"></asp:TextBox>
                    </div>
                 </div>
                  
             </div>
        </section>
    </form>
</body>
</html>
