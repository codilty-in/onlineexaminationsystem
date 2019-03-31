<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exam_details.aspx.cs" Inherits="Online_Examination_System.file.exam_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>exam details</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h1 style="background-color:aquamarine; margin:0; padding:8px; font-size:80px; font-family: 'Bookman Old Style'; color: #000000; font-style: normal; font-weight: bold; font-variant: small-caps;">Online Examination System</h1>
        </div>
        <section>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Course Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t1" runat="server" Font-Size="X-Large" Height="23px" Width="270px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Course Name is Empty" ControlToValidate="t1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Course No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t2" runat="server" Font-Size="X-Large" Height="23px" Width="270px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Course No is Empty" ControlToValidate="t2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Session"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t3" runat="server" Font-Size="X-Large" Height="23px" Width="270px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Session is Empty" ControlToValidate="t3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Exam Type"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="d1" runat="server" Font-Size="Large" Height="32px" Width="270px">
                             
                                    <asp:ListItem>Class Test</asp:ListItem>
                                    <asp:ListItem>Quiz</asp:ListItem>
                                     <asp:ListItem>Finale</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Exam Type" ControlToValidate="d1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Full Marks"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t4" runat="server" Font-Size="X-Large" Height="23px" Width="270px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Full Marks is Empty" ControlToValidate="t4"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Exam Time Duration"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t5" runat="server" Font-Size="Large" TextMode="Number" placeholder="Insert full time in minutes"  Height="23px" Width="270px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Exam Time Duration is Empty" ControlToValidate="t5"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Exam Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t6" runat="server" Font-Size="X-Large" Height="23px" Width="270px" MaxLength="15"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="t6" ErrorMessage="Enter a Password for this Exam"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                       <asp:Button ID="b1" runat="server" style="font-family: 'Bookman Old Style'; font-size: x-large; font-style: normal; font-variant: small-caps; font-weight: bold; color: #000000" Text="Create Exam" OnClick="b1_Click" BorderStyle="Double" Height="47px" Width="216px" />                      
                    </td>
                </tr>
            </table>

                <asp:Label ID="l8" runat="server" style="font-family: 'bookman Old Style'; font-weight:bold; font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; " Text=""></asp:Label>
            
        </section>
    </form>
</body>
</html>
