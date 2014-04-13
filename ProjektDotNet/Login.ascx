<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="ProjektDotNet.Login" %>
 <b>Login:</b>
                                                <asp:TextBox type="text" id="TextBoxLogin" runat="server" cssclass="logintxtbox form-control" />
                                                <b>Hasło:</b>
                                                <asp:TextBox type="password" id="TextBoxHaslo" cssclass="logintxtbox form-control" runat="server" />
                                                <asp:CheckBox id="zapamietajCheckBox" runat="server" Text="Zapamiętaj mnie"/>
                                                <br />
                                                <asp:Button ID="Zaloguj" Name="Logowanie" value="Logowanie" Text="Zaloguj" CssClass="loginbutton btn btn-primary" runat="server" />