<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EditUsers.aspx.cs" Inherits="ProjektDotNet.EditUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="User1" runat="server" Text="Użytkownik 1"></asp:Label>
    <asp:Button ID="Blokuj" CssClass="buttons btn btn-primary marginEU" Text="Blokuj" runat="server" ValidationGroup="grupa1" />
    <asp:Button ID="Usuń" CssClass="buttons btn btn-primary  marginEU" Text="Usuń" runat="server" ValidationGroup="grupa1" /> <br />
    <asp:Label ID="Label1" runat="server" Text="Użytkownik 2"></asp:Label>
    <asp:Button ID="Button1" CssClass="buttons btn btn-primary  marginEU" Text="Odblokuj" runat="server" ValidationGroup="grupa1" />
    <asp:Button ID="Button2" CssClass="buttons btn btn-primary  marginEU" Text="Usuń" runat="server" ValidationGroup="grupa1" /> <br />
    <asp:Label ID="Label2" runat="server" Text="Użytkownik 3"></asp:Label>
    <asp:Button ID="Button3" CssClass="buttons btn btn-primary  marginEU" Text="Blokuj" runat="server" ValidationGroup="grupa1" />
    <asp:Button ID="Button4" CssClass="buttons btn btn-primary  marginEU" Text="Usuń" runat="server" ValidationGroup="grupa1" /> <br />


</asp:Content>
