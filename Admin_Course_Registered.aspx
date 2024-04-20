<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Course_Registered.aspx.cs" Inherits="packages_Admin_Course_Registered" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Admin_Course_Registered.css" type="text/css"/>
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
                     <h2>Registered Students</h2>
                     <br />
                     <br />
                     <br />
                 </div>

                 <div class="Bottom">
                        <div class="Mid">
                        <asp:DropDownList class="bt1" ID="Course_Select" runat="server" OnSelectedIndexChanged="CourseSelect_SelectedIndexChanged" >  
                            <asp:ListItem Value="">Select</asp:ListItem>  
                            <asp:ListItem Value="Subject1">Subject1</asp:ListItem>  
                            <asp:ListItem Value="Subject2">Subject2</asp:ListItem>  
                            <asp:ListItem Value="Subject3">Subject3</asp:ListItem>  
                            <asp:ListItem Value="Subject4">Subject4</asp:ListItem>
                            <asp:ListItem Value="Subject5">Subject5</asp:ListItem>  
                            <asp:ListItem Value="Subject6">Subject6</asp:ListItem>  
                            <asp:ListItem Value="Subject7">Subject7</asp:ListItem>
                        </asp:DropDownList> 
                        <h4>Section :</h4>
                         <asp:TextBox class="T2" ID="Section" runat="server" TYPE="text" VALUE="" OnTextChanged="Section_TextChanged"></asp:TextBox>
                     </div>
                      <div class="Mid">
                        <asp:DropDownList class="bt1" ID="Teacher" runat="server" OnSelectedIndexChanged="TeacherSelect_SelectedIndexChanged" >  
                            <asp:ListItem Value="">Select</asp:ListItem>  
                            <asp:ListItem Value="Subject1">Subject1</asp:ListItem>  
                            <asp:ListItem Value="Subject2">Subject2</asp:ListItem>  
                            <asp:ListItem Value="Subject3">Subject3</asp:ListItem>  
                            <asp:ListItem Value="Subject4">Subject4</asp:ListItem>
                            <asp:ListItem Value="Subject5">Subject5</asp:ListItem>  
                            <asp:ListItem Value="Subject6">Subject6</asp:ListItem>  
                            <asp:ListItem Value="Subject7">Subject7</asp:ListItem>
                        </asp:DropDownList> 
                        <asp:DropDownList class="bt1" ID="Coordinator" runat="server" OnSelectedIndexChanged="CoordinatorSelect_SelectedIndexChanged" >  
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                     <div class="Mid">
                         <asp:TextBox class="bt1" ID="Submit" runat="server" TYPE="submit" VALUE="Submit" OnTextChanged="Submit_TextChanged"></asp:TextBox>
                     </div>
                 </div>
                  
             </div>
          
        </section>
    </form>
</body>
</html>
