<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HTML_Form.aspx.cs" Inherits="Data_Insertion_App.HTML_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body style="position: relative; top: 0px; left: 0px; width: 363px; height: 272px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center; color: #FF6600;">Customers Details</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>ID</td>
                <td>
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Description</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email ID</td>
                <td>
                    <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Date Of Birth</td>
                <td>
                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#CCCCCC" OnClick="Button1_Click" style="text-align: center" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
