<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddAd.aspx.cs" Inherits="ProjektDotNet.AddAd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="post">
        <h2 class="title">
            <a href="#">Dodaj Ogłoszenie</a>
        </h2>
    </div>
    <div id="DodawanieDiv" runat="server">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="grupa1" />
                <table>
                    <tr>
                        <td>Kategoria</td>
                        <td>
                            <asp:DropDownList ID="DropDownListKategoria"
 
                                DataTextField="Nazwa" DataValueField="Id"
                                runat="server" CssClass="buttons">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Tytuł</td>
                        <td>
                            <asp:TextBox ID="TextBoxTytul" CssClass="txtbox form-control formValidation" MaxLength="60" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTytul" runat="server"
                                ControlToValidate="TextBoxTytul"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj tytuł ogłoszenia" Display="dynamic">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Treść</td>
                        <td>
                            <asp:TextBox ID="TextArea" CssClass="txtarea form-control formValidation" MaxLength="300" TextMode="MultiLine" Columns="50" Rows="5" onChange="Count(this,260)" onKeyUp="Count(this,260)" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorOpis" runat="server"
                                ControlToValidate="TextArea"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj treść ogłoszenia" Display="dynamic">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Cena</td>
                        <td>
                            <asp:TextBox ID="TextBoxCena" CssClass="txtbox form-control formValidation" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCena1" runat="server"
                                ControlToValidate="TextBoxCena"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj cenę" Display="dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorCena" runat="server"
                                ControlToValidate="TextBoxCena"
                                ValidationExpression="^\d{1,6}?$"
                                ValidationGroup="grupa1"
                                ErrorMessage="Podaj poprawną cenę (1-999999)" Display="dynamic">*</asp:RegularExpressionValidator>
                            <asp:CompareValidator ID="RequiredFieldValidatorCena2" runat="server"
                                ControlToValidate="TextBoxCena" ValueToCompare="0"
                                Operator="GreaterThan" Type="Double"
                                ValidationGroup="grupa1"
                                ErrorMessage="Cena musi być większa niż 0 (1-999999)" Display="dynamic">*</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="ButtonDodaj" CssClass="buttons btn btn-primary" Text="Dodaj" runat="server" ValidationGroup="grupa1" />
                        </td>
                    </tr>
                </table>
            </div>
</asp:Content>
