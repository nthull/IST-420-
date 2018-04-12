<%@ Page Title="" Language="C#" MasterPageFile="~/Taste.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="TasteAndTell.Pages.CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="AccountDetails" GroupingText="Details" Width="800px">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblUsername" Style="color: black" Text="Username: " runat="server" /></td>
                <td>
                    <asp:TextBox ID="txtUsername" Style="color: black" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" Type="Email" ErrorMessage="* You must input a username" />
                    <%-- Add validator for comparing if username is in database --%>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEmail" Style="color: black" Text="Email Address" runat="server" /></td>
                <td>
                    <asp:TextBox ID="txtEmail" Style="color: black" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ID="valEmail" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" Type="Email" ErrorMessage="* You must input an email address" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblPassword" Text="Password:" /></td>
                <td>
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" />
                </td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="valPassword" Display="Dynamic" ControlToValidate="txtPassword" ErrorMessage="* You must enter a password" />
                    <asp:RegularExpressionValidator runat="server" ID="valPasswordRE" ForeColor="Red" Display="Dynamic" ValidationExpression="^.{2,15}$" ControlToValidate="txtPassword" ErrorMessage="* Please enter a password with at least 5 characters" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblConfirmPassword" Text="Confirm Password:" /></td>
                <td>
                    <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" />
                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ID="valConfirmPassword" Display="Dynamic" ControlToValidate="txtConfirmPassword" ErrorMessage="* You must confirm your password" />
                    <asp:CompareValidator runat="server" ID="valConfirmPasswordCompare" ForeColor="Red" Display="Dynamic" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="* Passwords do not match" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblJSON" runat="server" />
    </asp:Panel>
    <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />
</asp:Content>
<%-- Add JavaScript construction of cookie, saving username and hashed password --%>
