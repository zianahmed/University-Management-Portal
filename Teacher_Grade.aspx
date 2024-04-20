<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_Grade.aspx.cs" Inherits="packages_Teacher_Grade" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Teacher_Grade.css" type="text/css"/>
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
                     <h2>Grade</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                     <div class="T1">
                         <h4>Course:</h4>
                         <asp:Label class="T2" ID="CName" runat="server" TYPE="text" VALUE=""></asp:Label>
                         <h4>Section:</h4>
                         <asp:Label class="T2" ID="Section" runat="server" TYPE="text" VALUE=""></asp:Label>
                     <br />
                         <asp:Label class="T2" ID="L1" runat="server" TYPE="text" VALUE="Weightage Not Equal To Hundred"></asp:Label>
                     </div>
                     <div class="T3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                            <Columns>
                             <asp:BoundField DataField="Type" HeaderText="Type"/>
                                <asp:TemplateField HeaderText="Weightage">
                                    <ItemTemplate>
                                        <asp:TextBox class="T2" ID="Weightage" runat="server" TYPE="Text" VALUE="0"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                         </div>
                    
                  <asp:Button ID="SubmitButton" runat="server" Text="Update Weightage" OnClick="SubmitButton1"/>
                  <asp:Button ID="Grade" runat="server" Text="Finalise Grades" OnClick="UpdateGrade"/>
                  <asp:TextBox class="bt" ID="CountReport" runat="server" TYPE="Submit" VALUE="Grade Count" OnTextChanged="CountButton"></asp:TextBox>
                  <asp:TextBox class="bt" ID="GradeReport" runat="server" TYPE="Submit" VALUE="Grade Report" OnTextChanged="GradeButton"></asp:TextBox>
                     
                 </div>
                           

                 </div>
                  
        </section>
    </form>
</body>
</html>
