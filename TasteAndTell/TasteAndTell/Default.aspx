<%@ Page Title="" Language="C#" MasterPageFile="~/Taste.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TasteAndTell.Pages.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="suggestLink" runat="server" Text="Recipe/Restaurant Suggestor" OnClick="suggestLink_Click"/>
</asp:Content>
