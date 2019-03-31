<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exam_list.aspx.cs" Inherits="Online_Examination_System.file.exam_list1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>exam list</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h1 style="background-color:aquamarine; margin:0; padding:8px; font-size:80px; font-family: 'Bookman Old Style'; color: #000000; font-style: normal; font-weight: bold; font-variant: small-caps;">Online Examination System</h1>
        </div>
        <div style="text-align:right; background-color:aquamarine;">
                <asp:Label ID="l1" runat="server" style="font-family: 'bookman Old Style'; font-weight:bold; font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; " Text=""></asp:Label>

                <asp:Button ID="b1" runat="server" style="font-family: 'Bookman Old Style'; font-size: xx-large; font-style: normal; font-variant: small-caps; font-weight: bold; color: #000000" Text="Log Out" OnClick="b1_Click" BorderStyle="Double" Height="37px" Width="132px" />                      
               
            </div>
        <section>
            
            <asp:GridView ID="gdv1" runat="server" AutoGenerateColumns="False" DataKeyNames="examID" DataSourceID="SqlDataSource1" Font-Size="Large">
                <Columns>
                    <asp:BoundField DataField="examID" HeaderText="examID" InsertVisible="False" ReadOnly="True" SortExpression="examID" />
                    <asp:BoundField DataField="organizedBy" HeaderText="organizedBy" SortExpression="organizedBy" />
                    <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
                    <asp:BoundField DataField="courseNo" HeaderText="courseNo" SortExpression="courseNo" />
                    <asp:BoundField DataField="session" HeaderText="session" SortExpression="session" />
                    <asp:BoundField DataField="examType" HeaderText="examType" SortExpression="examType" />
                    <asp:BoundField DataField="fullMarks" HeaderText="fullMarks" SortExpression="fullMarks" />
                    <asp:BoundField DataField="timeDuration" HeaderText="timeDuration" SortExpression="timeDuration" />
                    <asp:BoundField DataField="examTag" HeaderText="examTag" SortExpression="examTag" />
                    <asp:HyperLinkField DataNavigateUrlFormatString="exam_info.aspx?examTag={0}" HeaderText="Attend Exam" Text="Click Here" DataNavigateUrlFields="examTag" />
                </Columns>             
            </asp:GridView>

                
         </section>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" ProviderName="<%$ ConnectionStrings:DBCS.ProviderName %>" SelectCommand="SELECT * FROM [examDetails]"></asp:SqlDataSource>
    </form>
</body>
</html>
