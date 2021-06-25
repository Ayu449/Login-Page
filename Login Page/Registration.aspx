<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Login_Page.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 216px;
        }
        .auto-style3 {
            margin-right: 6px;
        }
        .auto-style4 {
            width: 216px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 156px;
        }
        .auto-style7 {
            width: 156px;
            height: 23px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            width: 216px;
            height: 25px;
        }
        .auto-style10 {
            width: 156px;
            height: 25px;
        }
        .auto-style11 {
            height: 25px;
            color: #FF0000;
        }
        .auto-style12 {
            width: 216px;
            height: 20px;
        }
        .auto-style13 {
            width: 156px;
            height: 20px;
        }
        .auto-style14 {
            height: 20px;
        }
        .auto-style17 {
            text-align: left;
            height: 15px;
            color: #FF0000;
        }
        .auto-style20 {
            text-align: left;
            height: 24px;
        }
        .auto-style23 {
            width: 216px;
            height: 15px;
        }
        .auto-style24 {
            width: 156px;
            height: 15px;
        }
        .auto-style25 {
            width: 216px;
            height: 24px;
        }
        .auto-style26 {
            width: 156px;
            height: 24px;
        }
        .auto-style27 {
            width: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Username:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxUN" runat="server" Width="180px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style8" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style8" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" EnableTheming="False" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid mail Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">Password:</td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBoxPass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style20" style="color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">Confirm Password:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBoxRpass" runat="server" CssClass="auto-style3" Height="16px" Width="179px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxRpass" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRpass" ErrorMessage="Both Passwords must be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Country:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownListCountry" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="186px">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Please Select a country!" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        <input id="Reset1" class="auto-style27" type="reset" value="reset" /></td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style14"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
