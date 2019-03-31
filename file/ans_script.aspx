<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ans_script.aspx.cs" Inherits="Online_Examination_System.file.ans_script1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ans script</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h1 style="background-color:aquamarine; margin:0; padding:8px; font-size:80px; font-family: 'Bookman Old Style'; color: #000000; font-style: normal; font-weight: bold; font-variant: small-caps;">Online Examination System</h1>
        </div>
        <div style="text-align:right; background-color:aquamarine;">
                <asp:Label ID="l1" runat="server" style="font-family: 'bookman Old Style'; font-weight:bold; font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; " Text=""></asp:Label>

                <asp:Button ID="b3" runat="server" style="font-family: 'Bookman Old Style'; font-size: xx-large; font-style: normal; font-variant: small-caps; font-weight: bold; color: #000000" Text="Log Out" OnClick="b3_Click" BorderStyle="Double" Height="37px" Width="132px" />                      
               
         </div>
         <div style="text-align:left; background-color:aquamarine;">
                <asp:Label ID="Label5" runat="server" style="font-family: 'bookman Old Style'; font-weight:bold; font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; " Text=""></asp:Label>
               
         </div>
        
        <section>
            <table>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                     <td></td>
                     <td>
                         <asp:GridView ID="gdv3" runat="server" Font-Size="X-Large">
                        </asp:GridView>
                     </td>
                 </tr>  
                  
               <tr>
                   <td></td>
                   <td></td>
               </tr>

                <tr>
                   <td></td>
                   <td></td>
               </tr>

                <tr>
                    <td></td>
                    <td>
                       <asp:GridView ID="gdv2" runat="server" Font-Size="Large" ></asp:GridView> 

                   <!--     <label><%=firstvarriable%></label> -->
          
                    </td>
                </tr>                                 
            </table>

                
            <asp:Label ID="Label4" runat="server" font-variant="small-caps"  Font-Size="X-Large" ForeColor="Black" Text=""></asp:Label>
           
            <table>
                <tr>
                    <td></td>
                    <td>
                       <a href="candidate_list.aspx" style="font-family: 'bookman Old Style';  font-style: normal; font-variant: small-caps; color: #000000; font-size: xx-large; font-weight: bold;">Go to Candidate List</a>       
                    </td>
                </tr>

                    <td>
                        <asp:Label ID="Label1" runat="server"  ForeColor="Black" font-weight="bolder" font-variant="small-caps" Text="Question No"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="d1" runat="server" Font-Size="X-Large" Height="33px" Width="350px">
                            
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
                    </td>    
                <td>
                    <asp:Button ID="b1" runat="server" Height="33px" Width="166px" ForeColor="Black" font-weight="bold" font-variant="small-caps" Text="Show Answer" CssClass="Button" OnClick="b1_Click" />
                </td>
            
            
            <tr>
                
              <td>
                    <asp:Label ID="Label2" runat="server"  ForeColor="Black" font-weight="bolder" font-variant="small-caps" Text="Add marks"></asp:Label>
               </td>
                  <td>
                      <asp:TextBox ID="t2" runat="server" Font-Size="X-Large" Height="27px" Width="350px"></asp:TextBox>
                </td>    
            
                   <td> 
            <asp:Button ID="b2" runat="server" Height="35px" Width="168px" ForeColor="Black" font-weight="bold" font-variant="small-caps" Text="Add Marks" CssClass="Button" OnClick="b2_Click" />
                </td>
            </tr>
            
             
        <tr>
            <td>

            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Black" font-weight="bold" font-variant="small-caps" Text=""></asp:Label>
            </td>
        </tr>

                 <tr>
                    <tr>
                    <td></td>
                     <td>
                           <asp:GridView ID="gdv1" runat="server" Font-Size="Large"></asp:GridView>

                     </td>
                    
                 </tr>
            
          </table>  
            
        </section>
    </form>
</body>
</html>
