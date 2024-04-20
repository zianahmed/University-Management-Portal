<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Course.aspx.cs" Inherits="packages_Student_Course" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Student_Course.css" type="text/css"/>
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
                     <h2>Course Register</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                     <div class="Mid">
                     <br />
                     <br />
                      <h2>Session:      <asp:Label CssClass="bt" ID="Semester" runat="server" Value=""></asp:Label>  
                     </h2>
                     </div>
                     <div class="T3">
                     <br />
                     <asp:TextBox  ID="L1" runat="server" Type="Text" Value="More than 6 Courses Registered" Visible="false"></asp:TextBox>
                     <br />
                     <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="Code" HeaderText="Code" />
                                <asp:BoundField DataField="Course" HeaderText="Course" />
                                <asp:BoundField DataField="Crd Hrs" HeaderText="Crd Hrs" />
                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="offer" runat="server" />
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
                     <br />
                     <br />
                     <br />
                    <asp:TextBox class="bt1" ID="Submit" runat="server" TYPE="submit" VALUE="Submit" OnTextChanged="Submit_func"></asp:TextBox>
                 </div>
                  
             </div>
        </section>
    </form>
</body>
</html>