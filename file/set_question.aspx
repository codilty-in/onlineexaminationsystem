<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_question.aspx.cs" Inherits="Online_Examination_System.file.set_question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>set question</title>
    <link href="StyleSheet.css" rel="stylesheet" />    
</head>
<body>
    <form id="form1" runat="server">
         <div style="text-align:center">
            <h1 style="background-color:aquamarine; margin:0; padding:8px; font-size:80px; font-family: 'Bookman Old Style'; color: #000000; font-style: normal; font-weight: bold; font-variant: small-caps;">Online Examination System</h1>
        </div>

        <div style="text-align:right; background-color:aquamarine;">

                <asp:Label ID="l10" runat="server" style="font-family: 'bookman Old Style'; font-weight:bold; font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; " Text=""></asp:Label>
              
        </div>
        <section>

            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>

            <asp:GridView ID="gdv1" runat="server"></asp:GridView>
            <table>

            </table>
            
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Question No"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="d1" runat="server" Font-Size="X-Large" Height="36px" Width="304px">
                            
                                    <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>B</asp:ListItem>
                                    <asp:ListItem>C</asp:ListItem>
                                    <asp:ListItem>D</asp:ListItem>
                                    <asp:ListItem>E</asp:ListItem>
                                    <asp:ListItem>F</asp:ListItem>
                                    <asp:ListItem>G</asp:ListItem>
                                    <asp:ListItem>H</asp:ListItem>
                                    <asp:ListItem>I</asp:ListItem>
                                    <asp:ListItem>J</asp:ListItem>
                                    <asp:ListItem>K</asp:ListItem>
                                    <asp:ListItem>L</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>N</asp:ListItem>
                                    <asp:ListItem>O</asp:ListItem>
                                    <asp:ListItem>P</asp:ListItem>
                                    <asp:ListItem>Q</asp:ListItem>
                                    <asp:ListItem>R</asp:ListItem>
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>T</asp:ListItem>
                                    <asp:ListItem>U</asp:ListItem>
                                    <asp:ListItem>V</asp:ListItem>
                                    <asp:ListItem>W</asp:ListItem>
                                    <asp:ListItem>X</asp:ListItem>
                                    <asp:ListItem>Y</asp:ListItem>
                                    <asp:ListItem>Z</asp:ListItem>

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Question No" ControlToValidate="d1"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Question"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t1" runat="server" Font-Size="X-Large" Height="97px" Width="302px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the Question" ControlToValidate="t1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Marks"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t2" runat="server" Font-Size="X-Large" Height="29px" Width="295px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the Marks of the Question" ControlToValidate="t2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Label ID="l4" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            <tr>
                <td>

                </td>
                <td>
                      <asp:Button ID="b1" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Height="50px" Width="237px" Text="Insert Question" OnClick="b1_Click" />

                </td>

                
            </tr>
            
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="b2" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Height="50px" Width="237px" Text="Update Question" OnClick="b2_Click" />
                </td>
                
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <a href="exam_list.aspx" style="font-family: 'bookman Old Style';  font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; font-weight: bold;">Click here to end</a><br /><br />
                </td>
            </tr>
            
                </table>
        </section>
    </form>
</body>
</html>
