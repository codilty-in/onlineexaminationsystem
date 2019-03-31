<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_registration.aspx.cs" Inherits="Online_Examination_System.file.user_registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1"  runat="server">
        <div style="text-align:center">
            <h1 style="background-color:aquamarine; margin:0; padding:8px; font-size:80px; font-family: 'Bookman Old Style'; color: #000000; font-style: normal; font-weight: bold; font-variant: small-caps;">Online Examination System</h1>
        </div>
        <section>
            <table>
                
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="User Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t1" runat="server" Font-Size="X-Large" Height="33px" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is Empty" ControlToValidate="t1"></asp:RequiredFieldValidator>
                    </td>
                   </tr>
                <tr>
                     <td>
                        <asp:Label ID="Label2" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t2" runat="server" Font-Size="X-Large" Height="33px" Width="350px" TextMode="Number" placeholder="User ID must be a number" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="ID is Empty" ControlToValidate="t2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                     <td>
                        <asp:Label ID="Label3" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="Full Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t3" runat="server" Font-Size="X-Large" Height="33px" Width="350px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Full Name is Empty" ControlToValidate="t3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                     <td>
                        <asp:Label ID="Label6" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t5" runat="server" Font-Size="X-Large" TextMode="Email" Height="33px" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email is Empty" ControlToValidate="t5"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                     <td>
                        <asp:Label ID="Label4" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t4" runat="server" Font-Size="X-Large" TextMode="Date" Height="33px" Width="350px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date of Birth is Empty" ControlToValidate="t4"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                     <td>
                        <asp:Label ID="Label5" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="Sex"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="d1" runat="server" Font-Size="X-Large" Height="33px" Width="350px">
                         
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Your Gender" ControlToValidate="d1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                     <td>
                        <asp:Label ID="Label7" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="Photo"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="f1" Font-Size="X-Large" runat="server" Height="33px" Width="350px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Insert Your Photo" ControlToValidate="f1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                     <td>
                        <asp:Label ID="Label8" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t6" runat="server" Font-Size="X-Large" TextMode="Password" Height="33px" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Insert a Password" ControlToValidate="t6"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="b1" runat="server" font-variant="small-caps" Font-Size="X-Large" Text="Sign Up" OnClick="b1_Click"  Width="148px" Height="45px"/>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Label ID="l9" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>                      
       </section>                
    </form>
</body>
</html>
