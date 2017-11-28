<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loging.aspx.cs" Inherits="Loging" MasterPageFile="~/MasterPage.master"%>

<asp:Content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
    
        <span class="auto-style5">Login Page</span><table class="auto-style2">
            <tr >
                <td class="auto-style6">UserName:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtUserName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Required UserName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPassword" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="68px" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New User Registration</asp:HyperLink>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
        </div>
    </asp:Content>
 
