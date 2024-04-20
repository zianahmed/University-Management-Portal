<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_Attendence_Edit.aspx.cs" Inherits="packages_Teacher_Attendence_Edit" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Teacher_Attendence_Edit.css" type="text/css"/>
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
                     <div class="T1">
                         <h4>Credit Hours :</h4>
                         <asp:TextBox class="T2" ID="Credit_Hours" runat="server" TYPE="text" VALUE="" OnTextChanged="Credit_Hours_TextChanged"></asp:TextBox>
                         <h4>Date :</h4>
                         <asp:TextBox class="T2" ID="Date" runat="server" TYPE="date" VALUE="" OnTextChanged="Date_TextChanged"></asp:TextBox>
                     <asp:TextBox class="bt" ID="TextBox1" runat="server" TYPE="submit" VALUE="Submit" OnTextChanged="SubmitButton"></asp:TextBox>
                     </div>
                     <div class="T3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                            <Columns>
                             <asp:BoundField DataField="Roll No" HeaderText="Roll No"/>
                             <asp:BoundField DataField="Name" HeaderText="Name"/>
                                <asp:TemplateField HeaderText="Attendance">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="ddlAttendance" runat="server">
                                            <asp:ListItem Text="P" Value="P"></asp:ListItem>
                                            <asp:ListItem Text="L" Value="L"></asp:ListItem>
                                            <asp:ListItem Text="A" Value="A"></asp:ListItem>
                                        </asp:DropDownList>
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
                    
                   </div>
               

                 </div>
                  
        </section>
    </form>
</body>
</html>
