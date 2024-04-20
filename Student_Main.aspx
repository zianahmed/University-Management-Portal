<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Main.aspx.cs" Inherits="packages_Student_Main" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Student_Main.css" type="text/css"/>
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
                     <h2>DashBoard</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                     <div class="T1">
                    <h4>Name :</h4>
                    <asp:Label class="T2" ID="Name" runat="server" Text=""></asp:Label>
                    <h4>ID :</h4>
                    <asp:Label class="T2" ID="ID" runat="server" Text=""></asp:Label>
                    <h4>Phone No :</h4>
                    <asp:Label class="T2" ID="PhoneNo" runat="server" Text=""></asp:Label>
                </div>
                <div class="T1">
                    <h4>Email :</h4>
                    <asp:Label class="T2" ID="Email" runat="server" Text=""></asp:Label>
                    <h4>Address :</h4>
                    <asp:Label class="T2" ID="Address" runat="server" Text=""></asp:Label>
                    <h4>Batch :</h4>
                    <asp:Label class="T2" ID="Batch" runat="server" Text=""></asp:Label>
                </div>
                <div class="T1">
                    <h4>Degree :</h4>
                    <asp:Label class="T2" ID="Degree" runat="server" Text=""></asp:Label>
                    <h4>Department :</h4>
                    <asp:Label class="T2" ID="Department" runat="server" Text=""></asp:Label>
                    <h4>CGPA :</h4>
                    <asp:Label class="T2" ID="CGPA" runat="server" Text=""></asp:Label>
                </div>

                 </div>
                  
             </div>
        </section>
    </form>
</body>
</html>
