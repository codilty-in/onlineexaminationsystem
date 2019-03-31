<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log_in.aspx.cs" Inherits="Online_Examination_System.file.log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>log In</title>
    <link href="StyleSheet.css" rel="stylesheet" />  
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <section>
           <h1 style="font-family: 'Bookman Old Style'; color: #000000; font-variant: small-caps; font-style:normal; font-weight: bolder; font-size: 100px">Online Examintaion System</h1>
           <p style="font-size: 30px; font-family: 'Bookman Old Style'; font-variant: small-caps; color: #000000; font-weight: bold; font-style: italic; text-transform: capitalize;">Log In to create exam or attend any exam...</p>
             <table >
                 <tr>
                    <td>

                    </td>
                    <td style="border-color: #000000; color: #000000;">
                        <asp:Button ID="b2" runat="server" font-variant="small-caps" Text= "Click Here to Create Account" OnClick="b2_Click" CssClass="Button" BackColor="#99CCFF" Font-Size="X-Large" Width="357px" BorderStyle="Double" ForeColor="Black" Height="51px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" font-variant="small-caps" Text="User Name" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td style="border-color: #000000; color: #000000;">
                        <asp:TextBox ID="t1" runat="server" Font-Size="X-Large" Height="36px" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" font-variant="small-caps" Font-Size="Large" Text="User ID"  ></asp:Label>
                    </td>
                    <td style="border-color: #000000; color: #000000;">
                        <asp:TextBox ID="t2" runat="server" Font-Size="X-Large" Height="33px" Width="350px" TextMode="Number" placeholder="User ID must be a number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Password" font-variant="small-caps" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td style="border-color: #000000; color: #000000;">
                        <asp:TextBox ID="t3" runat="server" Font-Size="X-Large" Height="33px" Width="350px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>    
                <tr>
                    <td>

                    </td>
                    <td style="border-color: #000000; color: #000000;">
                        <asp:Button ID="b1" runat="server" font-variant="small-caps" Text= "Log In" OnClick="b1_Click" CssClass="Button" BackColor="#FFCCFF" Font-Size="X-Large" Width="200px" BorderStyle="Double" ForeColor="Black" Height="51px" />
                    </td>
                </tr>
                 
                <tr>
                    <td>

                    </td>
                    <td>
                  <asp:Label ID="l1" runat="server" ForeColor="Black" font-weight="bold" font-variant="small-caps" BorderColor="Black"></asp:Label>

                    </td>
                </tr>
            
            </table>
            </section>      

    </form>
</body>
</html>
