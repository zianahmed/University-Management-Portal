<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_FeedBack.aspx.cs" Inherits="packages_Student_FeedBack" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>FLEX</title>
    <link rel="stylesheet" href="CSS/Student_FeedBack.css" type="text/css"/>
    <style type="text/css">
        .auto-style1 {
            height: 110px;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
        <section>
            <div class="contentBx">
                <div class="formBx">
                    <h2>Teacher Assessment Form</h2>
                    <div class="inputBx">
                        <span>Appearance and Personal Presentation</span>
                        <table>
                          <tr>
                            <th></th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                          </tr>
                          <tr>
                            <td class="auto-style1">Teacher attends class in a well presentable manner</td>
                            <td class="auto-style1"><asp:RadioButton ID="R111" runat="server" GroupName="Att1" Text="1" AutoPostBack="false" /></td>  
                            <td class="auto-style1"><asp:RadioButton ID="R112" runat="server" GroupName="Att1" Text="2" AutoPostBack="false"/></td> 
                            <td class="auto-style1"><asp:RadioButton ID="R113" runat="server" GroupName="Att1" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td class="auto-style1"><asp:RadioButton ID="R114" runat="server" GroupName="Att1" Text="4" AutoPostBack="false"/></td> 
                            <td class="auto-style1"><asp:RadioButton ID="R115" runat="server" GroupName="Att1" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher shows enthusiasm when teaching in class</td>
                            <td><asp:RadioButton ID="R121" runat="server" GroupName="Att2" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R122" runat="server" GroupName="Att2" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R123" runat="server" GroupName="Att2" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R124" runat="server" GroupName="Att2" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R125" runat="server" GroupName="Att2" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher shows initiative and flexibility in teaching</td>
                            <td><asp:RadioButton ID="R131" runat="server" GroupName="Att3" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R132" runat="server" GroupName="Att3" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R133" runat="server" GroupName="Att3" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R134" runat="server" GroupName="Att3" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R135" runat="server" GroupName="Att3" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher is well articulated and shows full knowledge of the subject in teaching</td>
                            <td><asp:RadioButton ID="R141" runat="server" GroupName="Att4" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R142" runat="server" GroupName="Att4" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R143" runat="server" GroupName="Att4" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R144" runat="server" GroupName="Att4" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R145" runat="server" GroupName="Att4" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher speaks loud and clear enough to be heard by the whole class</td>
                            <td><asp:RadioButton ID="R151" runat="server" GroupName="Att5" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R152" runat="server" GroupName="Att5" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R153" runat="server" GroupName="Att5" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R154" runat="server" GroupName="Att5" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R155" runat="server" GroupName="Att5" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                        </table>

                    </div>
                    <div class="inputBx">
                        <span>Professional Practices</span>
                        <table>
                          <tr>
                            <th></th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                          </tr>
                          <tr>
                            <td>Teacher shows professionalism in class</td>
                            <td><asp:RadioButton ID="R211" runat="server" GroupName="Att6" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R212" runat="server" GroupName="Att6" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R213" runat="server" GroupName="Att6" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R214" runat="server" GroupName="Att6" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R215" runat="server" GroupName="Att6" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher shows commitment to teaching the class</td>
                            <td><asp:RadioButton ID="R221" runat="server" GroupName="Att7" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R222" runat="server" GroupName="Att7" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R223" runat="server" GroupName="Att7" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R224" runat="server" GroupName="Att7" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R225" runat="server" GroupName="Att7" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher encourages students to engage in class discussions and ask questions</td>
                            <td><asp:RadioButton ID="R231" runat="server" GroupName="Att8" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R232" runat="server" GroupName="Att8" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R233" runat="server" GroupName="Att8" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R234" runat="server" GroupName="Att8" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R235" runat="server" GroupName="Att8" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher handles criticisms and suggestions professionally</td>
                            <td><asp:RadioButton ID="R241" runat="server" GroupName="Att9" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R242" runat="server" GroupName="Att9" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R243" runat="server" GroupName="Att9" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R244" runat="server" GroupName="Att9" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R245" runat="server" GroupName="Att9" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher comes to class on time</td>
                            <td><asp:RadioButton ID="R251" runat="server" GroupName="Att10" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R252" runat="server" GroupName="Att10" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R253" runat="server" GroupName="Att10" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R254" runat="server" GroupName="Att10" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R255" runat="server" GroupName="Att10" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher ends class on time</td>
                            <td><asp:RadioButton ID="R261" runat="server" GroupName="Att11" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R262" runat="server" GroupName="Att11" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R263" runat="server" GroupName="Att11" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R264" runat="server" GroupName="Att11" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R265" runat="server" GroupName="Att11" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                        </table>
                    </div>
                    <div class="inputBx">
                        <span>Teaching Methods</span>
                        <table>
                          <tr>
                            <th></th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                          </tr>
                          <tr>
                            <td>Teacher shows well rounded knowledge over the subject matter</td>
                            <td><asp:RadioButton ID="R311" runat="server" GroupName="Att12" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R312" runat="server" GroupName="Att12" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R313" runat="server" GroupName="Att12" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R314" runat="server" GroupName="Att12" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R315" runat="server" GroupName="Att12" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher has organized the lesson conducive for easy understanding of students</td>
                            <td><asp:RadioButton ID="R321" runat="server" GroupName="Att13" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R322" runat="server" GroupName="Att13" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R323" runat="server" GroupName="Att13" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R324" runat="server" GroupName="Att13" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R325" runat="server" GroupName="Att13" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher shows dynamism and enthusiasm</td>
                            <td><asp:RadioButton ID="R331" runat="server" GroupName="Att14" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R332" runat="server" GroupName="Att14" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R333" runat="server" GroupName="Att14" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R334" runat="server" GroupName="Att14" Text="4" AutoPostBack="false" /></td> 
                            <td><asp:RadioButton ID="R335" runat="server" GroupName="Att14" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher stimulates the critical thinking of students</td>
                            <td><asp:RadioButton ID="R341" runat="server" GroupName="Att15" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R342" runat="server" GroupName="Att15" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R343" runat="server" GroupName="Att15" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R344" runat="server" GroupName="Att15" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R345" runat="server" GroupName="Att15" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher handles the class environment conducive for learning</td>
                            <td><asp:RadioButton ID="R351" runat="server" GroupName="Att16" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R352" runat="server" GroupName="Att16" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R353" runat="server" GroupName="Att16" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R354" runat="server" GroupName="Att16" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R355" runat="server" GroupName="Att16" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                        </table>
                    </div>
                    <div class="inputBx">
                        <span>Disposition Towards Students</span>
                        <table>
                          <tr>
                            <th></th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                          </tr>
                          <tr>
                            <td>Teacher believes that students can learn from the class</td>
                            <td><asp:RadioButton ID="R411" runat="server" GroupName="Att17" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R412" runat="server" GroupName="Att17" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R413" runat="server" GroupName="Att17" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R414" runat="server" GroupName="Att17" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R415" runat="server" GroupName="Att17" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher shows equal respect to various cultural backgrounds, individuals, religion, and race</td>
                            <td><asp:RadioButton ID="R421" runat="server" GroupName="Att18" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R422" runat="server" GroupName="Att18" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R423" runat="server" GroupName="Att18" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R424" runat="server" GroupName="Att18" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R425" runat="server" GroupName="Att18" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher finds the students strengths as basis for growth and weaknesses for opportunities for improvement</td>
                            <td><asp:RadioButton ID="R431" runat="server" GroupName="Att19" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R432" runat="server" GroupName="Att19" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R433" runat="server" GroupName="Att19" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R434" runat="server" GroupName="Att19" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R435" runat="server" GroupName="Att19" Text="5" AutoPostBack="false"/></td> 
                          </tr>
                          <tr>
                            <td>Teacher understands the weakness of a student and helps in the student's improvement</td>
                            <td><asp:RadioButton ID="R441" runat="server" GroupName="Att20" Text="1" AutoPostBack="false"/></td>  
                            <td><asp:RadioButton ID="R442" runat="server" GroupName="Att20" Text="2" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R443" runat="server" GroupName="Att20" Text="3" AutoPostBack="false" Checked="true"/></td> 
                            <td><asp:RadioButton ID="R444" runat="server" GroupName="Att20" Text="4" AutoPostBack="false"/></td> 
                            <td><asp:RadioButton ID="R445" runat="server" GroupName="Att20" Text="5" AutoPostBack="false"/></td> 
                          </tr>                          
                        </table>
                    </div>
                    <div class="inputBx">
                        <span>Comments</span><br />
                        <asp:TextBox runat="server" ID="MyBox" Text="" TextMode="MultiLine" Rows="10" Columns="90"  />
                    </div>
                     <div class="inputBx">
                    <asp:Button ID="SubmitButton" runat="server" OnClick="Submit_func" Text="Submit" />

                     </div>

                 
                </div>

            </div>
        </section>
    </form>
</body>
</html>
