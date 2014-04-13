<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EditAds.aspx.cs" Inherits="ProjektDotNet.EditAds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Tytuł ogłoszenia"></asp:Label>
            </td>
            <td><asp:Button ID="ButtonEdytuj1" CssClass="buttons btn btn-primary" Text="Edytuj" runat="server"/></td>
            <td><asp:Button ID="ButtonUsun" CssClass="buttons btn btn-danger" Text="Usuń" runat="server"/></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label2" runat="server" Text="Tytuł ogłoszenia"></asp:Label></td>
            <td><asp:Button ID="Button1" CssClass="buttons btn btn-primary" Text="Edytuj" runat="server"/></td>
            <td><asp:Button ID="Button4" CssClass="buttons btn btn-danger" Text="Usuń" runat="server"/></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label3" runat="server" Text="Tytuł ogłoszenia"></asp:Label></td>
            <td><asp:Button ID="Button2" CssClass="buttons btn btn-primary" Text="Edytuj" runat="server"/></td>
            <td><asp:Button ID="Button5" CssClass="buttons btn btn-danger" Text="Usuń" runat="server"/></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label4" runat="server" Text="Tytuł ogłoszenia"></asp:Label></td>
            <td><asp:Button ID="Button3" CssClass="buttons btn btn-primary" Text="Edytuj" runat="server"/></td>
            <td><asp:Button ID="Button6" CssClass="buttons btn btn-danger" Text="Usuń" runat="server"/></td>
        </tr>
    </table>
</asp:Content>
