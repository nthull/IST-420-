<%@ Page Title="" Language="C#" MasterPageFile="~/Taste.Master" AutoEventWireup="true" CodeBehind="BlogPost.aspx.cs" Inherits="TasteAndTell.Pages.BlogPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="BlogText" runat="server" Width="800px">
        <table>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Title: " Font-Bold="true" ID="lblBlogTitle" Width="100px"/>
                    <asp:TextBox runat="server" ID="txtBlogTitle" Width="400px"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="valBlogTitle" ErrorMessage="* Please Add a Title" Forecolor="Red"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtBlogInput" Width="500px" Height="800px" style="overflow:auto"/>
                    <asp:RequiredFieldValidator runat="server"  ControlToValidate="valBlogInput" ErrorMessage="* Please Add Blog Content!" Forecolor="Red"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Post!"/> 
                    <asp:Button runat="server" ID="btnClear" Text="Clear" OnClick="btnClear_Click" />
                    <%--Add Css Button Style--%>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
