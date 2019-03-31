<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="question_list.aspx.cs" Inherits="Online_Examination_System.file.question_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>question list</title>
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

        <div style="text-align:center; background-color:aquamarine;">
              <marquee>  
                  <asp:Label ID="Label5" runat="server" style="font-family: 'bookman Old Style'; font-weight:bold; font-style: normal;  color: red; font-size:xx-large ; " Text=""></asp:Label>
             </marquee>
        </div>

        <div style="text-align:left; background-color:aquamarine; font-family: 'bookman Old Style'; font-weight:bold; font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; ">
              <asp:ScriptManager ID="sp" runat="server"></asp:ScriptManager>
              <asp:Timer ID="timerTest" runat="server" Interval="1000" OnTick="timerTest_tick"></asp:Timer>
              <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
                
              <ContentTemplate>            
                    <asp:Literal ID="litMsg" runat="server" ></asp:Literal>
              </ContentTemplate>
              <Triggers>
                    <asp:AsyncPostBackTrigger ControlID ="timerTest" EventName="tick"/>
              </Triggers>
            </asp:UpdatePanel>
        </div>

        

        <section>
           <asp:GridView ID="gdv1" runat="server" Font-Size="Large"></asp:GridView>
            
            <table>
                
                <tr>

                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Question No"></asp:Label>
                    </td>
                   <td>
                        <asp:DropDownList ID="d1" runat="server" Font-Size="Large" Height="37px" Width="400px">
                            <asp:ListItem>Select A Question Number</asp:ListItem>
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
                        <asp:Label ID="Label2" runat="server" Text="Write your answer"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="t1" runat="server" Font-Size="X-Large" Height="106px" Width="400px" TextMode="MultiLine" CausesValidation="True"></asp:TextBox>
                    </td>
                </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <asp:Button ID="b1" runat="server" style="font-family: 'Bookman Old Style'; font-size: x-large; font-style: normal; font-variant: small-caps; font-weight: bold; color: #000000" Text="Submit Answer" CssClass="Button" OnClick="b1_Click" Height="49px" Width="200px" />
                                <asp:Button ID="b2" runat="server" style="font-family: 'Bookman Old Style'; font-size: x-large; font-style: normal; font-variant: small-caps; font-weight: bold; color: #000000" Text="Show Answer" CssClass="Button" OnClick="b2_Click" Height="49px" Width="200px" />
                            </td>
                        </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                       <asp:Label ID="Label3" runat="server"  Text=""></asp:Label>  
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                      <!--  <asp:GridView ID="gdv2" runat="server" Font-Size="Large" Height="400px" Width="500px" ></asp:GridView> -->
                        <asp:Label ID="Label4" runat="server" font-variant="small-caps"  Font-Size="Large" ForeColor="Black" Height="400px" Width="700px" Text=""></asp:Label>
                    </td>
                </tr>
                  </table>      
            
        </section>
    </form>
</body>
</html>
