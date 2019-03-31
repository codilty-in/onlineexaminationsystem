<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidate_list.aspx.cs" Inherits="Online_Examination_System.file.ans_script" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>candidate list</title>
    <link href="StyleSheet.css" rel="stylesheet" /> 
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h1 style="background-color:aquamarine; margin:0; padding:8px; font-size:80px; font-family: 'Bookman Old Style'; color: #000000; font-style: normal; font-weight: bold; font-variant: small-caps;">Online Examination System</h1>
        </div>

        <div style="text-align:right; background-color:aquamarine;">

                <asp:Label ID="l10" runat="server" style="font-family: 'bookman Old Style'; font-weight:bold; font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; " Text=""></asp:Label>
                <asp:Button ID="b2" runat="server" style="font-family: 'Bookman Old Style'; font-size: xx-large; font-style: normal; font-variant: small-caps; font-weight: bold; color: #000000" Text="Log Out" OnClick="b2_Click" BorderStyle="Double" Height="37px" Width="132px" />                      

            </div>
        <section>
            <asp:GridView ID="gdv1" runat="server" Font-Size="X-Large"></asp:GridView>
        
        <table>
            <tr>
                <td>
                    
                </td>
                <td>
                     <asp:Label ID="Label1" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text="Check answer script by inserting ID in the following box..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                   <asp:TextBox ID="t1" runat="server" Font-Size="X-Large" Height="33px" Width="260px"></asp:TextBox>
                   <asp:Button ID="b1" runat="server" Text="Check Answer" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" OnClick="b1_Click" Height="40px" Width="184px" />
                </td>
            </tr>
        </table>
        
        </section>
    </form>
</body>
</html>
