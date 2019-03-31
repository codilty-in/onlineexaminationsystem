<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="select_role.aspx.cs" Inherits="Online_Examination_System.file.select_role" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>select role</title>
    <link href="StyleSheet.css" rel="stylesheet" /> 
</head>
<body>
    <form id="form1" runat="server">

        <div style="text-align:center">
            <h1 style="background-color:aquamarine; margin:0; padding:8px; font-size:80px; font-family: 'Bookman Old Style'; color: #000000; font-style: normal; font-weight: bold; height:auto; font-variant: small-caps;">Online Examination System</h1>
        </div>

            <st>
                
                <p style="font-family: 'bookman Old Style'; font-size: x-large; font-style: normal; font-variant: small-caps; color: #000000; font-weight: bold;">Select Your Role!!!</p>
            
                <a href="exam_details.aspx" style="font-family: 'Bookman Old Style';  font-size: x-large; font-style: normal; font-variant: small-caps; color: #000000; font-weight: bold;">Set Question</a><br /><br />
            
                <a href="exam_list.aspx" style="font-family: 'bookman Old Style';  font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; font-weight: bold;">Exam List</a><br /><br />        
                
                <asp:Label ID="l1" runat="server" style="font-family: 'bookman Old Style'; font-weight:bold; font-style: normal; font-variant: small-caps; color: #000000; font-size: x-large; " Text=""></asp:Label>

                <asp:Button ID="b1" runat="server" style="font-family: 'Bookman Old Style'; font-size: x-large; font-style: normal; font-variant: small-caps; font-weight: bold; color: #000000" Text="Log Out" OnClick="b1_Click" BorderStyle="Double" Height="39px" Width="115px" />                      
               
            </st>
                    
           <p style="font-family: 'Bookman Old Style'; margin:0 auto;    font-size: 30px; font-weight:bold; padding:50px; font-style: normal; font-variant: small-caps; color: #000000; background-color: azure;">You can set any kind of exam such as subjective, MCQ, class test & quiz by inserting proper information. To create an exam, you need to set a password so that other people can't access your examination. After setting an examination, an exam tag is given. This one is a unique tag. Please, remember this tag so that you can control your exam further. And No student get access to any exam for the second time. </p>
                    
        
    </form>
</body>
</html>
