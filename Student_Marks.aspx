<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Marks.aspx.cs" Inherits="packages_Student_Marks" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Student_Marks.css" type="text/css"/>
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
                     <h2>Marks</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                     <div class="Mid">
                        <asp:DropDownList class="bt1" ID="Subject" runat="server" OnSelectedIndexChanged="SubjectSelect_SelectedIndexChanged"   AutoPostBack="true">  
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
                     <div class="T3">
                         <span id="Selected_Sub">Subject</span><br />
                         <span>Quiz</span><br />
                        <asp:GridView ID="Quiz" runat="server" CssClass="gridview" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
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
                         <span>Assignment</span><br />
                         <asp:GridView ID="Assignment" runat="server" CssClass="gridview" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                             <AlternatingRowStyle BackColor="#F7F7F7" />
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
                         <span>Mid-Term</span><br />
                         <asp:GridView ID="Mid" runat="server" CssClass="gridview" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                             <AlternatingRowStyle BackColor="#F7F7F7" />
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
                         <span>Project</span><br />
                         <asp:GridView ID="Project" runat="server" CssClass="gridview" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                             <AlternatingRowStyle BackColor="#F7F7F7" />
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
                         <span>Final</span><br />
                         <asp:GridView ID="Final" runat="server" CssClass="gridview" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                             <AlternatingRowStyle BackColor="#F7F7F7" />
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
                         <span>Grand Total</span><br />
                         <asp:GridView ID="GrandTotal" runat="server" CssClass="gridview" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                             <AlternatingRowStyle BackColor="#F7F7F7" />
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
