<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exam_info.aspx.cs" Inherits="Online_Examination_System.file.exam_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>exam info</title>
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
            <!--    <asp:Label ID="Label1" runat="server" Text="<a href='question_list.aspx'>Start Exam</a>"></asp:Label></br></br> -->

            <!--      <asp:Label ID="Label4" runat="server" Text="<a href='exam_information.aspx'>Exam Settings</a>"></asp:Label></br></br> -->

               <table>    
                   <tr>
                        <td style="text-align:center; font-family: 'Bookman Old Style'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: small-caps; color: #000000;">
                        
                        <asp:Label ID="Label5" runat="server" style="text-align:center; font-family: 'bookman Old Style'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: small-caps; color: #000000;" Text="Give Exam Password"></asp:Label>
                 
                        <asp:TextBox ID="t1" runat="server" style= "font-family: 'bookman Old Style'; font-size: large; font-weight: bold; font-style: normal; font-variant: small-caps; color: #000000;" Height="28px" Width="185px"></asp:TextBox>
                
                        <asp:Button ID="b1" runat="server"  Text="Start Exam" style="text-align:center; font-family: 'bookman Old Style'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: small-caps; color: #000000;" OnClick="b1_Click" />
                    </td>
                </tr>

                   <td>
                         <asp:Label ID="l6" runat="server" style="text-align:center; font-family: 'bookman Old Style'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: small-caps; color: #000000;" Text=""></asp:Label>

                   </td>
                   </table>
                        
                
            <table>
                <tr>
                    <td></td><td></td>
                </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:GridView ID="gdv1" runat="server" Visible="False" Font-Size="Large"></asp:GridView>
                </td>
            </tr>
            
                <tr>
                    <td></td>
                    <td>
                         <asp:Label ID="Label3" runat="server" style="text-align:center  ; font-family: 'bookman Old Style'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: small-caps; " Text="<a href='set_question.aspx'>Edit Question</a>" Visible="False" >  </asp:Label>      
                     </td>
                    
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                          <asp:Label ID="Label2" runat="server" style="text-align:center ; font-family: 'bookman Old Style'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: small-caps; color: #000000;" Text="<a href='candidate_list.aspx'>Check Answer Script</a>" Visible="False" ></asp:Label></br></br>                   
                    </td>
                    
                </tr>
           
                  <p><asp:Label ID="Label6" runat="server" style="text-align:center; font-family: 'bookman Old Style'; font-size: x-large; font-weight: bold; font-style: normal; font-variant: small-caps; color: #000000;" Text=""></asp:Label> </p>   
             
                    
            </table>
            </section>
    </form>
</body>
</html>
