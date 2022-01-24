<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sms.aspx.cs" Inherits="SignalTextApp.sms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile Number:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlContacts" runat="server" Height="16px" Width="294px">
                            <asp:ListItem Value="+27810458122">TK</asp:ListItem>
                            <asp:ListItem Value="+27828213267">Frikkie</asp:ListItem>
                            <asp:ListItem Value="+27659992192">Iain</asp:ListItem>
                            <asp:ListItem Value="+27792409104">Andries</asp:ListItem>
                            <asp:ListItem Value="+27659991389">Thabo</asp:ListItem>
                            <asp:ListItem Value="+27825715794">Jano</asp:ListItem>
                            <asp:ListItem Value="+27734796220">Lala</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtSms"   runat="server" Height="54px" TextMode="MultiLine" Width="282px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSendSms" runat="server" Font-Bold="True" Text="Send Sms" OnClick="btnSendSms_Click"  />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblStatus" runat="server" Text="Status" ForeColor="#009933"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
